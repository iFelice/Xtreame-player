.class public final Lcom/google/android/gms/internal/ads/k7;
.super Lcom/google/android/gms/internal/ads/qH;
.source "SourceFile"


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field public static final zzd:I = 0x4

.field public static final zze:I = 0x5

.field public static final zzf:I = 0x6

.field private static final zzg:Lcom/google/android/gms/internal/ads/k7;

.field private static volatile zzh:Lcom/google/android/gms/internal/ads/SH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/SH;"
        }
    .end annotation
.end field


# instance fields
.field private zzi:I

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/ads/X6;

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/k7;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/k7;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/k7;->zzg:Lcom/google/android/gms/internal/ads/k7;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/k7;

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
    iput v0, p0, Lcom/google/android/gms/internal/ads/k7;->zzj:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic A()Lcom/google/android/gms/internal/ads/k7;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/k7;->zzg:Lcom/google/android/gms/internal/ads/k7;

    return-object v0
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
    const/4 v0, 0x0

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
    sget-object p1, Lcom/google/android/gms/internal/ads/k7;->zzh:Lcom/google/android/gms/internal/ads/SH;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-class p2, Lcom/google/android/gms/internal/ads/k7;

    .line 21
    .line 22
    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/k7;->zzh:Lcom/google/android/gms/internal/ads/SH;

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
    sput-object p1, Lcom/google/android/gms/internal/ads/k7;->zzh:Lcom/google/android/gms/internal/ads/SH;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/k7;->zzg:Lcom/google/android/gms/internal/ads/k7;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/Q3;

    .line 46
    .line 47
    const/16 p2, 0x1a

    .line 48
    .line 49
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/Q3;-><init>(ILa/r;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/k7;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/k7;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_4
    const/16 p1, 0x8

    .line 60
    .line 61
    new-array p1, p1, [Ljava/lang/Object;

    .line 62
    .line 63
    const-string v0, "zzi"

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    aput-object v0, p1, v1

    .line 67
    .line 68
    const-string v0, "zzj"

    .line 69
    .line 70
    aput-object v0, p1, p2

    .line 71
    .line 72
    sget-object p2, Lcom/google/android/gms/internal/ads/B7;->a:Lcom/google/android/gms/internal/ads/B7;

    .line 73
    .line 74
    const/4 v0, 0x2

    .line 75
    aput-object p2, p1, v0

    .line 76
    .line 77
    const-string p2, "zzk"

    .line 78
    .line 79
    const/4 v0, 0x3

    .line 80
    aput-object p2, p1, v0

    .line 81
    .line 82
    const-string p2, "zzl"

    .line 83
    .line 84
    const/4 v0, 0x4

    .line 85
    aput-object p2, p1, v0

    .line 86
    .line 87
    const-string p2, "zzm"

    .line 88
    .line 89
    const/4 v0, 0x5

    .line 90
    aput-object p2, p1, v0

    .line 91
    .line 92
    const-string p2, "zzn"

    .line 93
    .line 94
    const/4 v0, 0x6

    .line 95
    aput-object p2, p1, v0

    .line 96
    .line 97
    const-string p2, "zzo"

    .line 98
    .line 99
    const/4 v0, 0x7

    .line 100
    aput-object p2, p1, v0

    .line 101
    .line 102
    sget-object p2, Lcom/google/android/gms/internal/ads/k7;->zzg:Lcom/google/android/gms/internal/ads/k7;

    .line 103
    .line 104
    const-string v0, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1004\u0004\u0006\u1003\u0005"

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
    return-object v0

    .line 113
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    nop

    .line 119
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
