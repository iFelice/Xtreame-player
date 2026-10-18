.class public final Lcom/google/android/gms/internal/ads/G7;
.super Lcom/google/android/gms/internal/ads/qH;
.source "SourceFile"


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field public static final zzd:I = 0x4

.field private static final zze:Lcom/google/android/gms/internal/ads/G7;

.field private static volatile zzf:Lcom/google/android/gms/internal/ads/SH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/SH;"
        }
    .end annotation
.end field


# instance fields
.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/ads/E7;

.field private zzi:Lcom/google/android/gms/internal/ads/xH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/xH;"
        }
    .end annotation
.end field

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/ads/R6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/G7;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/G7;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/G7;->zze:Lcom/google/android/gms/internal/ads/G7;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/G7;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/WH;->J:Lcom/google/android/gms/internal/ads/WH;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/G7;->zzi:Lcom/google/android/gms/internal/ads/xH;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic A()Lcom/google/android/gms/internal/ads/G7;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/G7;->zze:Lcom/google/android/gms/internal/ads/G7;

    return-object v0
.end method


# virtual methods
.method public final x(ILcom/google/android/gms/internal/ads/qH;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-static {p1}, Lu/h;->b(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

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
    sget-object p1, Lcom/google/android/gms/internal/ads/G7;->zzf:Lcom/google/android/gms/internal/ads/SH;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p2, Lcom/google/android/gms/internal/ads/G7;

    .line 22
    .line 23
    monitor-enter p2

    .line 24
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/G7;->zzf:Lcom/google/android/gms/internal/ads/SH;

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
    sput-object p1, Lcom/google/android/gms/internal/ads/G7;->zzf:Lcom/google/android/gms/internal/ads/SH;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/G7;->zze:Lcom/google/android/gms/internal/ads/G7;

    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/s7;

    .line 47
    .line 48
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/s7;-><init>(II)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/G7;

    .line 53
    .line 54
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/G7;-><init>()V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_4
    const/4 p1, 0x7

    .line 59
    new-array p1, p1, [Ljava/lang/Object;

    .line 60
    .line 61
    const-string v2, "zzg"

    .line 62
    .line 63
    aput-object v2, p1, v0

    .line 64
    .line 65
    const-string v0, "zzh"

    .line 66
    .line 67
    aput-object v0, p1, p2

    .line 68
    .line 69
    const-string p2, "zzi"

    .line 70
    .line 71
    const/4 v0, 0x2

    .line 72
    aput-object p2, p1, v0

    .line 73
    .line 74
    const-class p2, Lcom/google/android/gms/internal/ads/Q6;

    .line 75
    .line 76
    const/4 v0, 0x3

    .line 77
    aput-object p2, p1, v0

    .line 78
    .line 79
    const-string p2, "zzj"

    .line 80
    .line 81
    const/4 v0, 0x4

    .line 82
    aput-object p2, p1, v0

    .line 83
    .line 84
    sget-object p2, Lcom/google/android/gms/internal/ads/B7;->a:Lcom/google/android/gms/internal/ads/B7;

    .line 85
    .line 86
    aput-object p2, p1, v1

    .line 87
    .line 88
    const-string p2, "zzk"

    .line 89
    .line 90
    const/4 v0, 0x6

    .line 91
    aput-object p2, p1, v0

    .line 92
    .line 93
    sget-object p2, Lcom/google/android/gms/internal/ads/G7;->zze:Lcom/google/android/gms/internal/ads/G7;

    .line 94
    .line 95
    const-string v0, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u1009\u0000\u0002\u001b\u0003\u180c\u0001\u0004\u1009\u0002"

    .line 96
    .line 97
    new-instance v1, Lcom/google/android/gms/internal/ads/XH;

    .line 98
    .line 99
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/XH;-><init>(Lcom/google/android/gms/internal/ads/qH;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-object v1

    .line 103
    :pswitch_5
    const/4 p1, 0x0

    .line 104
    return-object p1

    .line 105
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    return-object p1

    .line 110
    nop

    .line 111
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
