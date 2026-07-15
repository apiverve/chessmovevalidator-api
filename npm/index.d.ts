declare module '@apiverve/chessmovevalidator' {
  export interface chessmovevalidatorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface chessmovevalidatorResponse {
    status: string;
    error: string | null;
    data: ChessMoveValidatorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ChessMoveValidatorData {
      move:      null | string;
      valid:     boolean | null;
      type:      null | string;
      piece:     null | string;
      capture:   boolean | null;
      check:     boolean | null;
      checkmate: boolean | null;
      promotion: boolean | null;
  }

  export default class chessmovevalidatorWrapper {
    constructor(options: chessmovevalidatorOptions);

    execute(callback: (error: any, data: chessmovevalidatorResponse | null) => void): Promise<chessmovevalidatorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: chessmovevalidatorResponse | null) => void): Promise<chessmovevalidatorResponse>;
    execute(query?: Record<string, any>): Promise<chessmovevalidatorResponse>;
  }
}
