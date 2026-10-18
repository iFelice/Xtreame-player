.class public final Lcom/google/android/gms/internal/ads/g4;
.super Lcom/google/android/gms/internal/ads/qH;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/g4;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/SH;


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzc:I

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:I

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:I

.field private zzo:J

.field private zzp:J

.field private zzu:J

.field private zzv:J

.field private zzw:J

.field private zzx:J

.field private zzy:J

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/g4;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/g4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/g4;->zza:Lcom/google/android/gms/internal/ads/g4;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/g4;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qH;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qH;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qH;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzd:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zze:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzf:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzg:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzh:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzi:J

    .line 17
    .line 18
    const/16 v2, 0x3e8

    .line 19
    .line 20
    iput v2, p0, Lcom/google/android/gms/internal/ads/g4;->zzj:I

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzk:J

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzl:J

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzm:J

    .line 27
    .line 28
    iput v2, p0, Lcom/google/android/gms/internal/ads/g4;->zzn:I

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzo:J

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzp:J

    .line 33
    .line 34
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzu:J

    .line 35
    .line 36
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzv:J

    .line 37
    .line 38
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzy:J

    .line 39
    .line 40
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzz:J

    .line 41
    .line 42
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzA:J

    .line 43
    .line 44
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzB:J

    .line 45
    .line 46
    return-void
.end method

.method public static A()Lcom/google/android/gms/internal/ads/f4;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/g4;->zza:Lcom/google/android/gms/internal/ads/g4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qH;->g()Lcom/google/android/gms/internal/ads/oH;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/f4;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic B(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzd:J

    return-void
.end method

.method public static synthetic C(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zze:J

    return-void
.end method

.method public static synthetic D(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzf:J

    return-void
.end method

.method public static synthetic E(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzg:J

    return-void
.end method

.method public static synthetic F(Lcom/google/android/gms/internal/ads/g4;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzg:J

    return-void
.end method

.method public static synthetic G(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzh:J

    return-void
.end method

.method public static synthetic H(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzi:J

    return-void
.end method

.method public static synthetic I(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzk:J

    return-void
.end method

.method public static synthetic J(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzl:J

    return-void
.end method

.method public static synthetic K(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzm:J

    return-void
.end method

.method public static synthetic L(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzo:J

    return-void
.end method

.method public static synthetic M(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzp:J

    return-void
.end method

.method public static synthetic N(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzu:J

    return-void
.end method

.method public static synthetic O(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzv:J

    return-void
.end method

.method public static synthetic P(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzw:J

    return-void
.end method

.method public static synthetic Q(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzx:J

    return-void
.end method

.method public static synthetic R(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzy:J

    return-void
.end method

.method public static synthetic S(Lcom/google/android/gms/internal/ads/g4;J)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzz:J

    return-void
.end method

.method public static synthetic T(Lcom/google/android/gms/internal/ads/g4;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzj:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    return-void
.end method

.method public static synthetic U(Lcom/google/android/gms/internal/ads/g4;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzn:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/g4;->zzc:I

    return-void
.end method


# virtual methods
.method public final x(ILcom/google/android/gms/internal/ads/qH;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-static {p1}, Lu/h;->b(I)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/g4;->zzb:Lcom/google/android/gms/internal/ads/SH;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class p2, Lcom/google/android/gms/internal/ads/g4;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/g4;->zzb:Lcom/google/android/gms/internal/ads/SH;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Lcom/google/android/gms/internal/ads/pH;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object p1, Lcom/google/android/gms/internal/ads/g4;->zzb:Lcom/google/android/gms/internal/ads/SH;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit p2

    .line 37
    goto :goto_2

    .line 38
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1

    .line 40
    :cond_1
    :goto_2
    return-object p1

    .line 41
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/g4;->zza:Lcom/google/android/gms/internal/ads/g4;

    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/f4;

    .line 45
    .line 46
    sget-object p2, Lcom/google/android/gms/internal/ads/g4;->zza:Lcom/google/android/gms/internal/ads/g4;

    .line 47
    .line 48
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/oH;-><init>(Lcom/google/android/gms/internal/ads/qH;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/g4;

    .line 53
    .line 54
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/g4;-><init>()V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_4
    const/16 p1, 0x18

    .line 59
    .line 60
    new-array p1, p1, [Ljava/lang/Object;

    .line 61
    .line 62
    const-string v0, "zzc"

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    aput-object v0, p1, v1

    .line 66
    .line 67
    const-string v0, "zzd"

    .line 68
    .line 69
    aput-object v0, p1, p2

    .line 70
    .line 71
    const-string p2, "zze"

    .line 72
    .line 73
    const/4 v0, 0x2

    .line 74
    aput-object p2, p1, v0

    .line 75
    .line 76
    const-string p2, "zzf"

    .line 77
    .line 78
    const/4 v0, 0x3

    .line 79
    aput-object p2, p1, v0

    .line 80
    .line 81
    const-string p2, "zzg"

    .line 82
    .line 83
    const/4 v0, 0x4

    .line 84
    aput-object p2, p1, v0

    .line 85
    .line 86
    const-string p2, "zzh"

    .line 87
    .line 88
    const/4 v0, 0x5

    .line 89
    aput-object p2, p1, v0

    .line 90
    .line 91
    const-string p2, "zzi"

    .line 92
    .line 93
    const/4 v0, 0x6

    .line 94
    aput-object p2, p1, v0

    .line 95
    .line 96
    const-string p2, "zzj"

    .line 97
    .line 98
    const/4 v0, 0x7

    .line 99
    aput-object p2, p1, v0

    .line 100
    .line 101
    sget-object p2, Lcom/google/android/gms/internal/ads/o4;->a:Lcom/google/android/gms/internal/ads/o4;

    .line 102
    .line 103
    const/16 v0, 0x8

    .line 104
    .line 105
    aput-object p2, p1, v0

    .line 106
    .line 107
    const-string v0, "zzk"

    .line 108
    .line 109
    const/16 v1, 0x9

    .line 110
    .line 111
    aput-object v0, p1, v1

    .line 112
    .line 113
    const-string v0, "zzl"

    .line 114
    .line 115
    const/16 v1, 0xa

    .line 116
    .line 117
    aput-object v0, p1, v1

    .line 118
    .line 119
    const-string v0, "zzm"

    .line 120
    .line 121
    const/16 v1, 0xb

    .line 122
    .line 123
    aput-object v0, p1, v1

    .line 124
    .line 125
    const-string v0, "zzn"

    .line 126
    .line 127
    const/16 v1, 0xc

    .line 128
    .line 129
    aput-object v0, p1, v1

    .line 130
    .line 131
    const/16 v0, 0xd

    .line 132
    .line 133
    aput-object p2, p1, v0

    .line 134
    .line 135
    const-string p2, "zzo"

    .line 136
    .line 137
    const/16 v0, 0xe

    .line 138
    .line 139
    aput-object p2, p1, v0

    .line 140
    .line 141
    const-string p2, "zzp"

    .line 142
    .line 143
    const/16 v0, 0xf

    .line 144
    .line 145
    aput-object p2, p1, v0

    .line 146
    .line 147
    const-string p2, "zzu"

    .line 148
    .line 149
    const/16 v0, 0x10

    .line 150
    .line 151
    aput-object p2, p1, v0

    .line 152
    .line 153
    const-string p2, "zzv"

    .line 154
    .line 155
    const/16 v0, 0x11

    .line 156
    .line 157
    aput-object p2, p1, v0

    .line 158
    .line 159
    const-string p2, "zzw"

    .line 160
    .line 161
    const/16 v0, 0x12

    .line 162
    .line 163
    aput-object p2, p1, v0

    .line 164
    .line 165
    const-string p2, "zzx"

    .line 166
    .line 167
    const/16 v0, 0x13

    .line 168
    .line 169
    aput-object p2, p1, v0

    .line 170
    .line 171
    const-string p2, "zzy"

    .line 172
    .line 173
    const/16 v0, 0x14

    .line 174
    .line 175
    aput-object p2, p1, v0

    .line 176
    .line 177
    const-string p2, "zzz"

    .line 178
    .line 179
    const/16 v0, 0x15

    .line 180
    .line 181
    aput-object p2, p1, v0

    .line 182
    .line 183
    const-string p2, "zzA"

    .line 184
    .line 185
    const/16 v0, 0x16

    .line 186
    .line 187
    aput-object p2, p1, v0

    .line 188
    .line 189
    const-string p2, "zzB"

    .line 190
    .line 191
    const/16 v0, 0x17

    .line 192
    .line 193
    aput-object p2, p1, v0

    .line 194
    .line 195
    sget-object p2, Lcom/google/android/gms/internal/ads/g4;->zza:Lcom/google/android/gms/internal/ads/g4;

    .line 196
    .line 197
    const-string v0, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u180c\u0006\u0008\u1002\u0007\t\u1002\u0008\n\u1002\t\u000b\u180c\n\u000c\u1002\u000b\r\u1002\u000c\u000e\u1002\r\u000f\u1002\u000e\u0010\u1002\u000f\u0011\u1002\u0010\u0012\u1002\u0011\u0013\u1002\u0012\u0014\u1002\u0013\u0015\u1002\u0014"

    .line 198
    .line 199
    new-instance v1, Lcom/google/android/gms/internal/ads/XH;

    .line 200
    .line 201
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/XH;-><init>(Lcom/google/android/gms/internal/ads/qH;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    return-object v1

    .line 205
    :pswitch_5
    const/4 p1, 0x0

    .line 206
    return-object p1

    .line 207
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    return-object p1

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
