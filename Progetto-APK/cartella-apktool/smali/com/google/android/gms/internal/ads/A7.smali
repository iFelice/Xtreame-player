.class public final Lcom/google/android/gms/internal/ads/A7;
.super Lcom/google/android/gms/internal/ads/qH;
.source "SourceFile"


# static fields
.field public static final zza:I = 0x5

.field public static final zzb:I = 0x6

.field public static final zzc:I = 0x7

.field public static final zzd:I = 0x8

.field private static final zze:Lcom/google/android/gms/internal/ads/A7;

.field private static volatile zzf:Lcom/google/android/gms/internal/ads/SH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/SH;"
        }
    .end annotation
.end field


# instance fields
.field private zzg:I

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/T6;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/A7;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/A7;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/A7;->zze:Lcom/google/android/gms/internal/ads/A7;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/A7;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/A7;->zzj:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/A7;->zzk:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic A()Lcom/google/android/gms/internal/ads/A7;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/A7;->zze:Lcom/google/android/gms/internal/ads/A7;

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
    const/4 v1, 0x2

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
    sget-object p1, Lcom/google/android/gms/internal/ads/A7;->zzf:Lcom/google/android/gms/internal/ads/SH;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p2, Lcom/google/android/gms/internal/ads/A7;

    .line 22
    .line 23
    monitor-enter p2

    .line 24
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/A7;->zzf:Lcom/google/android/gms/internal/ads/SH;

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
    sput-object p1, Lcom/google/android/gms/internal/ads/A7;->zzf:Lcom/google/android/gms/internal/ads/SH;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/A7;->zze:Lcom/google/android/gms/internal/ads/A7;

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
    new-instance p1, Lcom/google/android/gms/internal/ads/A7;

    .line 53
    .line 54
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/A7;-><init>()V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_4
    const/4 p1, 0x6

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
    sget-object p2, Lcom/google/android/gms/internal/ads/z7;->a:Lcom/google/android/gms/internal/ads/z7;

    .line 70
    .line 71
    aput-object p2, p1, v1

    .line 72
    .line 73
    const-string p2, "zzi"

    .line 74
    .line 75
    const/4 v0, 0x3

    .line 76
    aput-object p2, p1, v0

    .line 77
    .line 78
    const-string p2, "zzj"

    .line 79
    .line 80
    const/4 v0, 0x4

    .line 81
    aput-object p2, p1, v0

    .line 82
    .line 83
    const-string p2, "zzk"

    .line 84
    .line 85
    const/4 v0, 0x5

    .line 86
    aput-object p2, p1, v0

    .line 87
    .line 88
    sget-object p2, Lcom/google/android/gms/internal/ads/A7;->zze:Lcom/google/android/gms/internal/ads/A7;

    .line 89
    .line 90
    const-string v0, "\u0004\u0004\u0000\u0001\u0005\u0008\u0004\u0000\u0000\u0000\u0005\u180c\u0000\u0006\u1009\u0001\u0007\u1008\u0002\u0008\u1008\u0003"

    .line 91
    .line 92
    new-instance v1, Lcom/google/android/gms/internal/ads/XH;

    .line 93
    .line 94
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/XH;-><init>(Lcom/google/android/gms/internal/ads/qH;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-object v1

    .line 98
    :pswitch_5
    const/4 p1, 0x0

    .line 99
    return-object p1

    .line 100
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
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
