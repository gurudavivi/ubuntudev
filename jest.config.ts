// Sync object
const config = {
  verbose: true,
  rootDir: '.',
  testRegex: '.*\\.spec\\.ts$',
  transform: {
    '^.+\\.(t|j)s$': 'ts-jest',
  },
  collectCoverageFrom: ['src/**/*.(t|j)s'],
  coveragePathIgnorePatterns: ['index.ts', 'debug.ts'],
  coverageDirectory: 'coverage',
  testEnvironment: 'node',
  maxWorkers: '50%',
  collectCoverage: false,
};

export default config;
