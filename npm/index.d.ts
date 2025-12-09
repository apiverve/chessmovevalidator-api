declare module '@apiverve/chessmovevalidator' {
  export interface chessmovevalidatorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface chessmovevalidatorResponse {
    status: string;
    error: string | null;
    data: ChessMoveValidatorData;
    code?: number;
  }


  interface ChessMoveValidatorData {
      move:      string;
      valid:     boolean;
      type:      string;
      piece:     string;
      capture:   boolean;
      check:     boolean;
      checkmate: boolean;
      promotion: boolean;
  }

  export default class chessmovevalidatorWrapper {
    constructor(options: chessmovevalidatorOptions);

    execute(callback: (error: any, data: chessmovevalidatorResponse | null) => void): Promise<chessmovevalidatorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: chessmovevalidatorResponse | null) => void): Promise<chessmovevalidatorResponse>;
    execute(query?: Record<string, any>): Promise<chessmovevalidatorResponse>;
  }
}
