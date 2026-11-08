.class public final enum Lorg/videolan/libvlc/MediaPlayer$ScaleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/videolan/libvlc/MediaPlayer$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_16_10:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_16_9:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_221_1:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_235_1:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_239_1:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_2_1:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_4_3:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_5_4:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_BEST_FIT:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_FILL:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_FIT_SCREEN:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

.field public static final enum SURFACE_ORIGINAL:Lorg/videolan/libvlc/MediaPlayer$ScaleType;


# instance fields
.field private final ratio:Ljava/lang/Float;


# direct methods
.method private static synthetic $values()[Lorg/videolan/libvlc/MediaPlayer$ScaleType;
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 4
    .line 5
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_BEST_FIT:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_FIT_SCREEN:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_FILL:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_16_9:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_4_3:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_16_10:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_2_1:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_221_1:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_235_1:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_239_1:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_5_4:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_ORIGINAL:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 2
    .line 3
    const-string v1, "SURFACE_BEST_FIT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;ILjava/lang/Float;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_BEST_FIT:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 11
    .line 12
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 13
    .line 14
    const-string v1, "SURFACE_FIT_SCREEN"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;ILjava/lang/Float;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_FIT_SCREEN:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 21
    .line 22
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 23
    .line 24
    const-string v1, "SURFACE_FILL"

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;ILjava/lang/Float;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_FILL:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 31
    .line 32
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 33
    .line 34
    const v1, 0x3fe38e39

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "SURFACE_16_9"

    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    invoke-direct {v0, v2, v4, v1}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;ILjava/lang/Float;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_16_9:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 48
    .line 49
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 50
    .line 51
    const v1, 0x3faaaaab

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "SURFACE_4_3"

    .line 59
    .line 60
    const/4 v4, 0x4

    .line 61
    invoke-direct {v0, v2, v4, v1}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;ILjava/lang/Float;)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_4_3:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 65
    .line 66
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 67
    .line 68
    const v1, 0x3fcccccd    # 1.6f

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "SURFACE_16_10"

    .line 76
    .line 77
    const/4 v4, 0x5

    .line 78
    invoke-direct {v0, v2, v4, v1}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;ILjava/lang/Float;)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_16_10:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 82
    .line 83
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 84
    .line 85
    const/high16 v1, 0x40000000    # 2.0f

    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "SURFACE_2_1"

    .line 92
    .line 93
    const/4 v4, 0x6

    .line 94
    invoke-direct {v0, v2, v4, v1}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;ILjava/lang/Float;)V

    .line 95
    .line 96
    .line 97
    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_2_1:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 98
    .line 99
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 100
    .line 101
    const v1, 0x400d70a4    # 2.21f

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v2, "SURFACE_221_1"

    .line 109
    .line 110
    const/4 v4, 0x7

    .line 111
    invoke-direct {v0, v2, v4, v1}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;ILjava/lang/Float;)V

    .line 112
    .line 113
    .line 114
    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_221_1:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 115
    .line 116
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 117
    .line 118
    const v1, 0x40166666    # 2.35f

    .line 119
    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const-string v2, "SURFACE_235_1"

    .line 126
    .line 127
    const/16 v4, 0x8

    .line 128
    .line 129
    invoke-direct {v0, v2, v4, v1}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;ILjava/lang/Float;)V

    .line 130
    .line 131
    .line 132
    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_235_1:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 133
    .line 134
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 135
    .line 136
    const v1, 0x4018f5c3    # 2.39f

    .line 137
    .line 138
    .line 139
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string v2, "SURFACE_239_1"

    .line 144
    .line 145
    const/16 v4, 0x9

    .line 146
    .line 147
    invoke-direct {v0, v2, v4, v1}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;ILjava/lang/Float;)V

    .line 148
    .line 149
    .line 150
    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_239_1:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 151
    .line 152
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 153
    .line 154
    const/high16 v1, 0x3fa00000    # 1.25f

    .line 155
    .line 156
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const-string v2, "SURFACE_5_4"

    .line 161
    .line 162
    const/16 v4, 0xa

    .line 163
    .line 164
    invoke-direct {v0, v2, v4, v1}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;ILjava/lang/Float;)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_5_4:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 168
    .line 169
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 170
    .line 171
    const-string v1, "SURFACE_ORIGINAL"

    .line 172
    .line 173
    const/16 v2, 0xb

    .line 174
    .line 175
    invoke-direct {v0, v1, v2, v3}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;-><init>(Ljava/lang/String;ILjava/lang/Float;)V

    .line 176
    .line 177
    .line 178
    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_ORIGINAL:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 179
    .line 180
    invoke-static {}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->$values()[Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sput-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->$VALUES:[Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 185
    .line 186
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->ratio:Ljava/lang/Float;

    .line 5
    .line 6
    return-void
.end method

.method public static getMainScaleTypes()[Lorg/videolan/libvlc/MediaPlayer$ScaleType;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 3
    .line 4
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_BEST_FIT:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_FIT_SCREEN:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_FILL:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_16_9:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_4_3:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_ORIGINAL:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/videolan/libvlc/MediaPlayer$ScaleType;
    .locals 1

    .line 1
    const-class v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/videolan/libvlc/MediaPlayer$ScaleType;
    .locals 1

    .line 1
    sget-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->$VALUES:[Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/videolan/libvlc/MediaPlayer$ScaleType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getRatio()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->ratio:Ljava/lang/Float;

    .line 2
    .line 3
    return-object v0
.end method
