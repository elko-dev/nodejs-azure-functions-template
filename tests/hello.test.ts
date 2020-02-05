import { } from 'ts-jest';
describe('Hello', () => {

    it('World', () => {
        // arrange
        const expected = 'hello world'
        // act
        const actual = 'hello world'
        // assert
        expect(actual).toEqual(expected);
    });
});
