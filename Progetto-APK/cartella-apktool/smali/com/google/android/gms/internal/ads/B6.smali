.class public final Lcom/google/android/gms/internal/ads/B6;
.super Lcom/google/android/gms/internal/ads/qH;
.source "SourceFile"


# static fields
.field public static final zza:I = 0x7

.field public static final zzb:I = 0x8

.field public static final zzc:I = 0x9

.field public static final zzd:I = 0xa

.field public static final zze:I = 0xb

.field public static final zzf:I = 0xc

.field public static final zzg:I = 0xd

.field public static final zzh:I = 0xe

.field public static final zzi:I = 0xf

.field public static final zzj:I = 0x10

.field public static final zzk:I = 0x11

.field private static final zzl:Lcom/google/android/gms/internal/ads/B6;

.field private static volatile zzm:Lcom/google/android/gms/internal/ads/SH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/SH;"
        }
    .end annotation
.end field


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/F7;

.field private zzB:Lcom/google/android/gms/internal/ads/G7;

.field private zzC:Lcom/google/android/gms/internal/ads/xH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/xH;"
        }
    .end annotation
.end field

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzu:Lcom/google/android/gms/internal/ads/t7;

.field private zzv:Lcom/google/android/gms/internal/ads/v7;

.field private zzw:Lcom/google/android/gms/internal/ads/xH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/xH;"
        }
    .end annotation
.end field

.field private zzx:Lcom/google/android/gms/internal/ads/w7;

.field private zzy:Lcom/google/android/gms/internal/ads/N6;

.field private zzz:Lcom/google/android/gms/internal/ads/G6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/B6;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/B6;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/B6;->zzl:Lcom/google/android/gms/internal/ads/B6;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/B6;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qH;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qH;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qH;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/B6;->zzp:I

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/WH;->J:Lcom/google/android/gms/internal/ads/WH;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/B6;->zzw:Lcom/google/android/gms/internal/ads/xH;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/B6;->zzC:Lcom/google/android/gms/internal/ads/xH;

    .line 13
    .line 14
    return-void
.end method

.method public static A(Lcom/google/android/gms/internal/ads/B6;Lcom/google/android/gms/internal/ads/v7;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/B6;->zzv:Lcom/google/android/gms/internal/ads/v7;

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/B6;->zzn:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x8

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/B6;->zzn:I

    .line 11
    .line 12
    return-void
.end method

.method public static C()Lcom/google/android/gms/internal/ads/B6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/B6;->zzl:Lcom/google/android/gms/internal/ads/B6;

    return-object v0
.end method

.method public static D(Lcom/google/android/gms/internal/ads/B6;Lcom/google/android/gms/internal/ads/z6;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/z6;->G:I

    .line 5
    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/B6;->zzo:I

    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/ads/B6;->zzn:I

    .line 9
    .line 10
    or-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/B6;->zzn:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final B()Lcom/google/android/gms/internal/ads/v7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/B6;->zzv:Lcom/google/android/gms/internal/ads/v7;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/v7;->B()Lcom/google/android/gms/internal/ads/v7;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

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
    sget-object p1, Lcom/google/android/gms/internal/ads/B6;->zzm:Lcom/google/android/gms/internal/ads/SH;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class p2, Lcom/google/android/gms/internal/ads/B6;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/B6;->zzm:Lcom/google/android/gms/internal/ads/SH;

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
    sput-object p1, Lcom/google/android/gms/internal/ads/B6;->zzm:Lcom/google/android/gms/internal/ads/SH;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/B6;->zzl:Lcom/google/android/gms/internal/ads/B6;

    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/A6;

    .line 45
    .line 46
    sget-object p2, Lcom/google/android/gms/internal/ads/B6;->zzl:Lcom/google/android/gms/internal/ads/B6;

    .line 47
    .line 48
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/oH;-><init>(Lcom/google/android/gms/internal/ads/qH;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/B6;

    .line 53
    .line 54
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/B6;-><init>()V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_4
    const/16 p1, 0x10

    .line 59
    .line 60
    new-array p1, p1, [Ljava/lang/Object;

    .line 61
    .line 62
    const-string v0, "zzn"

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    aput-object v0, p1, v1

    .line 66
    .line 67
    const-string v0, "zzo"

    .line 68
    .line 69
    aput-object v0, p1, p2

    .line 70
    .line 71
    sget-object p2, Lcom/google/android/gms/internal/ads/y6;->a:Lcom/google/android/gms/internal/ads/y6;

    .line 72
    .line 73
    const/4 v0, 0x2

    .line 74
    aput-object p2, p1, v0

    .line 75
    .line 76
    const-string p2, "zzp"

    .line 77
    .line 78
    const/4 v0, 0x3

    .line 79
    aput-object p2, p1, v0

    .line 80
    .line 81
    sget-object p2, Lcom/google/android/gms/internal/ads/B7;->a:Lcom/google/android/gms/internal/ads/B7;

    .line 82
    .line 83
    const/4 v0, 0x4

    .line 84
    aput-object p2, p1, v0

    .line 85
    .line 86
    const-string p2, "zzu"

    .line 87
    .line 88
    const/4 v0, 0x5

    .line 89
    aput-object p2, p1, v0

    .line 90
    .line 91
    const-string p2, "zzv"

    .line 92
    .line 93
    const/4 v0, 0x6

    .line 94
    aput-object p2, p1, v0

    .line 95
    .line 96
    const-string p2, "zzw"

    .line 97
    .line 98
    const/4 v0, 0x7

    .line 99
    aput-object p2, p1, v0

    .line 100
    .line 101
    const-class p2, Lcom/google/android/gms/internal/ads/r7;

    .line 102
    .line 103
    const/16 v0, 0x8

    .line 104
    .line 105
    aput-object p2, p1, v0

    .line 106
    .line 107
    const-string p2, "zzx"

    .line 108
    .line 109
    const/16 v0, 0x9

    .line 110
    .line 111
    aput-object p2, p1, v0

    .line 112
    .line 113
    const-string p2, "zzy"

    .line 114
    .line 115
    const/16 v0, 0xa

    .line 116
    .line 117
    aput-object p2, p1, v0

    .line 118
    .line 119
    const-string p2, "zzz"

    .line 120
    .line 121
    const/16 v0, 0xb

    .line 122
    .line 123
    aput-object p2, p1, v0

    .line 124
    .line 125
    const-string p2, "zzA"

    .line 126
    .line 127
    const/16 v0, 0xc

    .line 128
    .line 129
    aput-object p2, p1, v0

    .line 130
    .line 131
    const-string p2, "zzB"

    .line 132
    .line 133
    const/16 v0, 0xd

    .line 134
    .line 135
    aput-object p2, p1, v0

    .line 136
    .line 137
    const-string p2, "zzC"

    .line 138
    .line 139
    const/16 v0, 0xe

    .line 140
    .line 141
    aput-object p2, p1, v0

    .line 142
    .line 143
    const-class p2, Lcom/google/android/gms/internal/ads/U6;

    .line 144
    .line 145
    const/16 v0, 0xf

    .line 146
    .line 147
    aput-object p2, p1, v0

    .line 148
    .line 149
    sget-object p2, Lcom/google/android/gms/internal/ads/B6;->zzl:Lcom/google/android/gms/internal/ads/B6;

    .line 150
    .line 151
    const-string v0, "\u0004\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007\u180c\u0000\u0008\u180c\u0001\t\u1009\u0002\n\u1009\u0003\u000b\u001b\u000c\u1009\u0004\r\u1009\u0005\u000e\u1009\u0006\u000f\u1009\u0007\u0010\u1009\u0008\u0011\u001b"

    .line 152
    .line 153
    new-instance v1, Lcom/google/android/gms/internal/ads/XH;

    .line 154
    .line 155
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/XH;-><init>(Lcom/google/android/gms/internal/ads/qH;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    return-object v1

    .line 159
    :pswitch_5
    const/4 p1, 0x0

    .line 160
    return-object p1

    .line 161
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    return-object p1

    .line 166
    nop

    .line 167
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
