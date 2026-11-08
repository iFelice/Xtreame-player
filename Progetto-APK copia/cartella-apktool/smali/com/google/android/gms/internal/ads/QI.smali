.class public final Lcom/google/android/gms/internal/ads/QI;
.super Lcom/google/android/gms/internal/ads/qH;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/QI;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/SH;


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/ads/PI;

.field private zze:Lcom/google/android/gms/internal/ads/xH;

.field private zzf:Lcom/google/android/gms/internal/ads/XG;

.field private zzg:Lcom/google/android/gms/internal/ads/XG;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/XG;

.field private zzj:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/QI;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/QI;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/QI;->zza:Lcom/google/android/gms/internal/ads/QI;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/QI;

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
    const/4 v0, 0x2

    .line 5
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/QI;->zzj:B

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/WH;->J:Lcom/google/android/gms/internal/ads/WH;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QI;->zze:Lcom/google/android/gms/internal/ads/xH;

    .line 10
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/XG;->H:Lcom/google/android/gms/internal/ads/VG;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QI;->zzf:Lcom/google/android/gms/internal/ads/XG;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QI;->zzg:Lcom/google/android/gms/internal/ads/XG;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/QI;->zzi:Lcom/google/android/gms/internal/ads/XG;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic A()Lcom/google/android/gms/internal/ads/QI;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/QI;->zza:Lcom/google/android/gms/internal/ads/QI;

    return-object v0
.end method


# virtual methods
.method public final x(ILcom/google/android/gms/internal/ads/qH;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1}, Lu/h;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v2, 0x0

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/QI;->zzb:Lcom/google/android/gms/internal/ads/SH;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p2, Lcom/google/android/gms/internal/ads/QI;

    .line 22
    .line 23
    monitor-enter p2

    .line 24
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/QI;->zzb:Lcom/google/android/gms/internal/ads/SH;

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    new-instance p1, Lcom/google/android/gms/internal/ads/pH;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object p1, Lcom/google/android/gms/internal/ads/QI;->zzb:Lcom/google/android/gms/internal/ads/SH;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit p2

    .line 39
    goto :goto_2

    .line 40
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_2
    return-object p1

    .line 43
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/QI;->zza:Lcom/google/android/gms/internal/ads/QI;

    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/s7;

    .line 47
    .line 48
    const/16 p2, 0x14

    .line 49
    .line 50
    invoke-direct {p1, p2, v2}, Lcom/google/android/gms/internal/ads/s7;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/QI;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/QI;-><init>()V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_4
    const/16 p1, 0x8

    .line 61
    .line 62
    new-array p1, p1, [Ljava/lang/Object;

    .line 63
    .line 64
    const-string p2, "zzc"

    .line 65
    .line 66
    aput-object p2, p1, v1

    .line 67
    .line 68
    const-string p2, "zzd"

    .line 69
    .line 70
    aput-object p2, p1, v0

    .line 71
    .line 72
    const-string p2, "zze"

    .line 73
    .line 74
    const/4 v0, 0x2

    .line 75
    aput-object p2, p1, v0

    .line 76
    .line 77
    const-class p2, Lcom/google/android/gms/internal/ads/LI;

    .line 78
    .line 79
    const/4 v0, 0x3

    .line 80
    aput-object p2, p1, v0

    .line 81
    .line 82
    const-string p2, "zzf"

    .line 83
    .line 84
    const/4 v0, 0x4

    .line 85
    aput-object p2, p1, v0

    .line 86
    .line 87
    const-string p2, "zzg"

    .line 88
    .line 89
    const/4 v0, 0x5

    .line 90
    aput-object p2, p1, v0

    .line 91
    .line 92
    const-string p2, "zzh"

    .line 93
    .line 94
    const/4 v0, 0x6

    .line 95
    aput-object p2, p1, v0

    .line 96
    .line 97
    const-string p2, "zzi"

    .line 98
    .line 99
    const/4 v0, 0x7

    .line 100
    aput-object p2, p1, v0

    .line 101
    .line 102
    sget-object p2, Lcom/google/android/gms/internal/ads/QI;->zza:Lcom/google/android/gms/internal/ads/QI;

    .line 103
    .line 104
    const-string v0, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003\u0006\u100a\u0004"

    .line 105
    .line 106
    new-instance v1, Lcom/google/android/gms/internal/ads/XH;

    .line 107
    .line 108
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/XH;-><init>(Lcom/google/android/gms/internal/ads/qH;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-object v1

    .line 112
    :pswitch_5
    if-nez p2, :cond_2

    .line 113
    .line 114
    const/4 v0, 0x0

    .line 115
    :cond_2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/QI;->zzj:B

    .line 116
    .line 117
    return-object v2

    .line 118
    :pswitch_6
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/QI;->zzj:B

    .line 119
    .line 120
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    return-object p1

    .line 125
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
