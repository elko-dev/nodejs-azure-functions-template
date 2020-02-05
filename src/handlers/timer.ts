'use strict';

export const handler = async (context: any, timerObj: any): Promise<any> => {
  context.log('Timer ran');
  context.log(timerObj);
  context.done();

  return Promise.resolve(context);
};