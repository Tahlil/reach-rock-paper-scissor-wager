import { loadStdlib} from '@reach-sh/stdlib';
import * as backend from './build/index.main.mjs';

const stdlib = loadStdlib();

const startingBalance = stdlib.parseCurrency(100);
const addAlice = await stdlib.newTestAccount(startingBalance);
const addBob = await stdlib.newTestAccount(startingBalance);

const ctcAlice = accAlice.contract(backend);
const ctcBob = accBob.contract(backend, ctcAlice.getInfo());