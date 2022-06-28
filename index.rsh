'reach 0.1'

const Player = {
    getHand: Fun([], UInt),
    seeOutcome: Fun([UInt], Null)
};

export const main = Reach.App(() => {   
    const Alice = Participant('ALice', {
        ...Player
    });

    const Bob = Participant('Bob', {
        ...Player
    });
    init();

    Alice.only(() => {
        const handALice = declassify(interact.getHand());
    });
    Alice.publish(handALice);
    commit();

    Bob.only(() => {
        const handBob = declassify(interact.getHand());
    });
    Bob.publish(handBob);

    const outcome = (handALice + (4- handBob)) % 3;
    commit();
})