const request = require('supertest');
const buildApp = require('../../app');
const pool = require('../../pool');
const UserRepo = require('../../repos/user-repos');
const Context = require('../context');

let context;
beforeAll(async () => {
  context = await Context.build();
});

afterAll(() => {
  return context.close();
});

it('create a user', async () => {
  const startingCount = await UserRepo.count();
  // expect(startingCount).toEqual(0);

  await request(buildApp())
    .post('/users')
    .send({ username: 'testuser', bio: 'test bio' })
    .expect(200);

  const finishCount = await UserRepo.count();
  expect(finishCount - startingCount).toEqual(1);
});
