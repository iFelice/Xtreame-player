.class public final enum Lq5/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum H:Lq5/c;

.field public static final enum I:Lq5/c;

.field public static final enum J:Lq5/c;

.field public static final enum K:Lq5/c;

.field public static final enum L:Lq5/c;

.field public static final enum M:Lq5/c;

.field public static final enum N:Lq5/c;

.field public static final enum O:Lq5/c;

.field public static final enum P:Lq5/c;

.field public static final enum Q:Lq5/c;

.field public static final synthetic R:[Lq5/c;


# instance fields
.field public final G:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lq5/c;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Object;

    .line 4
    .line 5
    const-string v2, "OTHER"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lq5/c;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lq5/c;

    .line 12
    .line 13
    const-string v2, "PURE_BARCODE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const-class v5, Ljava/lang/Void;

    .line 17
    .line 18
    invoke-direct {v1, v4, v5, v2}, Lq5/c;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lq5/c;->H:Lq5/c;

    .line 22
    .line 23
    new-instance v2, Lq5/c;

    .line 24
    .line 25
    const-class v6, Ljava/util/List;

    .line 26
    .line 27
    const-string v7, "POSSIBLE_FORMATS"

    .line 28
    .line 29
    const/4 v8, 0x2

    .line 30
    invoke-direct {v2, v8, v6, v7}, Lq5/c;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lq5/c;->I:Lq5/c;

    .line 34
    .line 35
    new-instance v6, Lq5/c;

    .line 36
    .line 37
    const-string v7, "TRY_HARDER"

    .line 38
    .line 39
    const/4 v9, 0x3

    .line 40
    invoke-direct {v6, v9, v5, v7}, Lq5/c;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v6, Lq5/c;->J:Lq5/c;

    .line 44
    .line 45
    new-instance v7, Lq5/c;

    .line 46
    .line 47
    const-class v10, Ljava/lang/String;

    .line 48
    .line 49
    const-string v11, "CHARACTER_SET"

    .line 50
    .line 51
    const/4 v12, 0x4

    .line 52
    invoke-direct {v7, v12, v10, v11}, Lq5/c;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sput-object v7, Lq5/c;->K:Lq5/c;

    .line 56
    .line 57
    new-instance v10, Lq5/c;

    .line 58
    .line 59
    const-string v11, "ALLOWED_LENGTHS"

    .line 60
    .line 61
    const/4 v13, 0x5

    .line 62
    const-class v14, [I

    .line 63
    .line 64
    invoke-direct {v10, v13, v14, v11}, Lq5/c;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v10, Lq5/c;->L:Lq5/c;

    .line 68
    .line 69
    new-instance v11, Lq5/c;

    .line 70
    .line 71
    const-string v15, "ASSUME_CODE_39_CHECK_DIGIT"

    .line 72
    .line 73
    const/4 v13, 0x6

    .line 74
    invoke-direct {v11, v13, v5, v15}, Lq5/c;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sput-object v11, Lq5/c;->M:Lq5/c;

    .line 78
    .line 79
    new-instance v15, Lq5/c;

    .line 80
    .line 81
    const-string v13, "ASSUME_GS1"

    .line 82
    .line 83
    const/4 v12, 0x7

    .line 84
    invoke-direct {v15, v12, v5, v13}, Lq5/c;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sput-object v15, Lq5/c;->N:Lq5/c;

    .line 88
    .line 89
    new-instance v13, Lq5/c;

    .line 90
    .line 91
    const-string v12, "RETURN_CODABAR_START_END"

    .line 92
    .line 93
    const/16 v9, 0x8

    .line 94
    .line 95
    invoke-direct {v13, v9, v5, v12}, Lq5/c;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sput-object v13, Lq5/c;->O:Lq5/c;

    .line 99
    .line 100
    new-instance v5, Lq5/c;

    .line 101
    .line 102
    const-class v12, Lq5/p;

    .line 103
    .line 104
    const-string v9, "NEED_RESULT_POINT_CALLBACK"

    .line 105
    .line 106
    const/16 v8, 0x9

    .line 107
    .line 108
    invoke-direct {v5, v8, v12, v9}, Lq5/c;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sput-object v5, Lq5/c;->P:Lq5/c;

    .line 112
    .line 113
    new-instance v9, Lq5/c;

    .line 114
    .line 115
    const-string v12, "ALLOWED_EAN_EXTENSIONS"

    .line 116
    .line 117
    const/16 v8, 0xa

    .line 118
    .line 119
    invoke-direct {v9, v8, v14, v12}, Lq5/c;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sput-object v9, Lq5/c;->Q:Lq5/c;

    .line 123
    .line 124
    const/16 v12, 0xb

    .line 125
    .line 126
    new-array v12, v12, [Lq5/c;

    .line 127
    .line 128
    aput-object v0, v12, v3

    .line 129
    .line 130
    aput-object v1, v12, v4

    .line 131
    .line 132
    const/4 v0, 0x2

    .line 133
    aput-object v2, v12, v0

    .line 134
    .line 135
    const/4 v0, 0x3

    .line 136
    aput-object v6, v12, v0

    .line 137
    .line 138
    const/4 v0, 0x4

    .line 139
    aput-object v7, v12, v0

    .line 140
    .line 141
    const/4 v0, 0x5

    .line 142
    aput-object v10, v12, v0

    .line 143
    .line 144
    const/4 v0, 0x6

    .line 145
    aput-object v11, v12, v0

    .line 146
    .line 147
    const/4 v0, 0x7

    .line 148
    aput-object v15, v12, v0

    .line 149
    .line 150
    const/16 v0, 0x8

    .line 151
    .line 152
    aput-object v13, v12, v0

    .line 153
    .line 154
    const/16 v0, 0x9

    .line 155
    .line 156
    aput-object v5, v12, v0

    .line 157
    .line 158
    aput-object v9, v12, v8

    .line 159
    .line 160
    sput-object v12, Lq5/c;->R:[Lq5/c;

    .line 161
    .line 162
    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lq5/c;->G:Ljava/lang/Class;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq5/c;
    .locals 1

    .line 1
    const-class v0, Lq5/c;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq5/c;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lq5/c;
    .locals 1

    .line 1
    sget-object v0, Lq5/c;->R:[Lq5/c;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lq5/c;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lq5/c;

    .line 8
    .line 9
    return-object v0
.end method
