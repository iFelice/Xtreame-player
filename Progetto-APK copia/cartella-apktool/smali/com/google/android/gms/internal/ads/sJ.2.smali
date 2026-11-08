.class public final Lcom/google/android/gms/internal/ads/sJ;
.super Lcom/google/android/gms/internal/ads/qH;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/sJ;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/SH;


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/ads/uH;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/ads/xH;

.field private zzi:Lcom/google/android/gms/internal/ads/XG;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/sJ;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/sJ;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/sJ;->zza:Lcom/google/android/gms/internal/ads/sJ;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/sJ;

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
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sJ;->zze:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/rH;->J:Lcom/google/android/gms/internal/ads/rH;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sJ;->zzf:Lcom/google/android/gms/internal/ads/uH;

    .line 11
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/WH;->J:Lcom/google/android/gms/internal/ads/WH;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sJ;->zzh:Lcom/google/android/gms/internal/ads/xH;

    .line 15
    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/XG;->H:Lcom/google/android/gms/internal/ads/VG;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sJ;->zzi:Lcom/google/android/gms/internal/ads/XG;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic A()Lcom/google/android/gms/internal/ads/sJ;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/sJ;->zza:Lcom/google/android/gms/internal/ads/sJ;

    return-object v0
.end method


# virtual methods
.method public final x(ILcom/google/android/gms/internal/ads/qH;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-static {p1}, Lu/h;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/sJ;->zzb:Lcom/google/android/gms/internal/ads/SH;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-class p2, Lcom/google/android/gms/internal/ads/sJ;

    .line 21
    .line 22
    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/sJ;->zzb:Lcom/google/android/gms/internal/ads/SH;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/pH;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object p1, Lcom/google/android/gms/internal/ads/sJ;->zzb:Lcom/google/android/gms/internal/ads/SH;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit p2

    .line 38
    goto :goto_2

    .line 39
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1

    .line 41
    :cond_1
    :goto_2
    return-object p1

    .line 42
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/sJ;->zza:Lcom/google/android/gms/internal/ads/sJ;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/rJ;

    .line 46
    .line 47
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/rJ;-><init>(I)V

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/sJ;

    .line 52
    .line 53
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/sJ;-><init>()V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const/16 p1, 0x8

    .line 58
    .line 59
    new-array p1, p1, [Ljava/lang/Object;

    .line 60
    .line 61
    const-string v1, "zzc"

    .line 62
    .line 63
    aput-object v1, p1, v0

    .line 64
    .line 65
    const-string v0, "zzd"

    .line 66
    .line 67
    aput-object v0, p1, p2

    .line 68
    .line 69
    const-string p2, "zze"

    .line 70
    .line 71
    const/4 v0, 0x2

    .line 72
    aput-object p2, p1, v0

    .line 73
    .line 74
    const-string p2, "zzf"

    .line 75
    .line 76
    const/4 v0, 0x3

    .line 77
    aput-object p2, p1, v0

    .line 78
    .line 79
    const-string p2, "zzg"

    .line 80
    .line 81
    const/4 v0, 0x4

    .line 82
    aput-object p2, p1, v0

    .line 83
    .line 84
    const-string p2, "zzh"

    .line 85
    .line 86
    const/4 v0, 0x5

    .line 87
    aput-object p2, p1, v0

    .line 88
    .line 89
    const-class p2, Lcom/google/android/gms/internal/ads/qJ;

    .line 90
    .line 91
    const/4 v0, 0x6

    .line 92
    aput-object p2, p1, v0

    .line 93
    .line 94
    const-string p2, "zzi"

    .line 95
    .line 96
    const/4 v0, 0x7

    .line 97
    aput-object p2, p1, v0

    .line 98
    .line 99
    sget-object p2, Lcom/google/android/gms/internal/ads/sJ;->zza:Lcom/google/android/gms/internal/ads/sJ;

    .line 100
    .line 101
    const-string v0, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u0016\u0005\u1004\u0002\u0006\u001b\u0007\u100a\u0003"

    .line 102
    .line 103
    new-instance v1, Lcom/google/android/gms/internal/ads/XH;

    .line 104
    .line 105
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/XH;-><init>(Lcom/google/android/gms/internal/ads/qH;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-object v1

    .line 109
    :pswitch_5
    const/4 p1, 0x0

    .line 110
    return-object p1

    .line 111
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    nop

    .line 117
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
