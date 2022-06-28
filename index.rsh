'reach 0.1'

const Player = {
    getHand: Fun([], UInt),
    seeOutcome: Fun([UInt], Null)
};

export const main = Reach.App(() => {   
    const Alice = Participant('ALice', {
        ...Player
    });

    const Bob = Participant('ALice', {
        ...Player
    });
})