const request = require('supertest');
const buildApp = require('../../app');
const UserRepo = require('../../repos/user-repos');

it('create a user', async () => {
  const startingCount = await UserRepo.count();
  expect(startingCount).toEqual(0);

  await (await request(buildApp()).post('/users'))
    .send({ username: 'testuser', bio: 'test bio' })
    .expect(200);

  const finish = await UserRepo.count();
  expect(finishCount).toEqual(1);
});
