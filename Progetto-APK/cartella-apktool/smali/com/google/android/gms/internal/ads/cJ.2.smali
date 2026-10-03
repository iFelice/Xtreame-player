.class public final Lcom/google/android/gms/internal/ads/cJ;
.super Lcom/google/android/gms/internal/ads/qH;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/cJ;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/SH;


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/ads/XG;

.field private zzg:Lcom/google/android/gms/internal/ads/XG;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/cJ;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cJ;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/cJ;->zza:Lcom/google/android/gms/internal/ads/cJ;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/cJ;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cJ;->zze:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/XG;->H:Lcom/google/android/gms/internal/ads/VG;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cJ;->zzf:Lcom/google/android/gms/internal/ads/XG;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cJ;->zzg:Lcom/google/android/gms/internal/ads/XG;

    .line 13
    .line 14
    return-void
.end method

.method public static A()Lcom/google/android/gms/internal/ads/aJ;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/cJ;->zza:Lcom/google/android/gms/internal/ads/cJ;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qH;->g()Lcom/google/android/gms/internal/ads/oH;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/aJ;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic B(Lcom/google/android/gms/internal/ads/cJ;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/cJ;->zzc:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/cJ;->zzc:I

    .line 6
    .line 7
    const-string v0, "image/png"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cJ;->zze:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic C(Lcom/google/android/gms/internal/ads/cJ;Lcom/google/android/gms/internal/ads/XG;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/cJ;->zzc:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/cJ;->zzc:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cJ;->zzf:Lcom/google/android/gms/internal/ads/XG;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic D(Lcom/google/android/gms/internal/ads/cJ;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/cJ;->zzd:I

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/ads/cJ;->zzc:I

    .line 5
    .line 6
    or-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/cJ;->zzc:I

    .line 8
    .line 9
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
    sget-object p1, Lcom/google/android/gms/internal/ads/cJ;->zzb:Lcom/google/android/gms/internal/ads/SH;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class p2, Lcom/google/android/gms/internal/ads/cJ;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/cJ;->zzb:Lcom/google/android/gms/internal/ads/SH;

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
    sput-object p1, Lcom/google/android/gms/internal/ads/cJ;->zzb:Lcom/google/android/gms/internal/ads/SH;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/cJ;->zza:Lcom/google/android/gms/internal/ads/cJ;

    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/aJ;

    .line 45
    .line 46
    sget-object p2, Lcom/google/android/gms/internal/ads/cJ;->zza:Lcom/google/android/gms/internal/ads/cJ;

    .line 47
    .line 48
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/oH;-><init>(Lcom/google/android/gms/internal/ads/qH;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/cJ;

    .line 53
    .line 54
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/cJ;-><init>()V

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
    const-string v0, "zzc"

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    aput-object v0, p1, v1

    .line 65
    .line 66
    const-string v0, "zzd"

    .line 67
    .line 68
    aput-object v0, p1, p2

    .line 69
    .line 70
    sget-object p2, Lcom/google/android/gms/internal/ads/bJ;->a:Lcom/google/android/gms/internal/ads/bJ;

    .line 71
    .line 72
    const/4 v0, 0x2

    .line 73
    aput-object p2, p1, v0

    .line 74
    .line 75
    const-string p2, "zze"

    .line 76
    .line 77
    const/4 v0, 0x3

    .line 78
    aput-object p2, p1, v0

    .line 79
    .line 80
    const-string p2, "zzf"

    .line 81
    .line 82
    const/4 v0, 0x4

    .line 83
    aput-object p2, p1, v0

    .line 84
    .line 85
    const-string p2, "zzg"

    .line 86
    .line 87
    const/4 v0, 0x5

    .line 88
    aput-object p2, p1, v0

    .line 89
    .line 90
    sget-object p2, Lcom/google/android/gms/internal/ads/cJ;->zza:Lcom/google/android/gms/internal/ads/cJ;

    .line 91
    .line 92
    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1008\u0001\u0003\u100a\u0002\u0004\u100a\u0003"

    .line 93
    .line 94
    new-instance v1, Lcom/google/android/gms/internal/ads/XH;

    .line 95
    .line 96
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/XH;-><init>(Lcom/google/android/gms/internal/ads/qH;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-object v1

    .line 100
    :pswitch_5
    const/4 p1, 0x0

    .line 101
    return-object p1

    .line 102
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    return-object p1

    .line 107
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
