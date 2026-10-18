.class public final Lcom/google/android/gms/internal/ads/OI;
.super Lcom/google/android/gms/internal/ads/qH;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/OI;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/SH;


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/ads/NI;

.field private zze:Lcom/google/android/gms/internal/ads/xH;

.field private zzf:Lcom/google/android/gms/internal/ads/XG;

.field private zzg:Lcom/google/android/gms/internal/ads/XG;

.field private zzh:I

.field private zzi:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/OI;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/OI;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/OI;->zza:Lcom/google/android/gms/internal/ads/OI;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/OI;

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
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/OI;->zzi:B

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/WH;->J:Lcom/google/android/gms/internal/ads/WH;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OI;->zze:Lcom/google/android/gms/internal/ads/xH;

    .line 10
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/XG;->H:Lcom/google/android/gms/internal/ads/VG;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OI;->zzf:Lcom/google/android/gms/internal/ads/XG;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OI;->zzg:Lcom/google/android/gms/internal/ads/XG;

    .line 16
    .line 17
    return-void
.end method

.method public static A()Lcom/google/android/gms/internal/ads/MI;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/OI;->zza:Lcom/google/android/gms/internal/ads/OI;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qH;->g()Lcom/google/android/gms/internal/ads/oH;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/MI;

    .line 8
    .line 9
    return-object v0
.end method

.method public static B(Lcom/google/android/gms/internal/ads/OI;Lcom/google/android/gms/internal/ads/LI;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OI;->zze:Lcom/google/android/gms/internal/ads/xH;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/QG;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/QG;->G:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qH;->h(Lcom/google/android/gms/internal/ads/xH;)Lcom/google/android/gms/internal/ads/xH;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/OI;->zze:Lcom/google/android/gms/internal/ads/xH;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/OI;->zze:Lcom/google/android/gms/internal/ads/xH;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final x(ILcom/google/android/gms/internal/ads/qH;)Ljava/lang/Object;
    .locals 2

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
    sget-object p1, Lcom/google/android/gms/internal/ads/OI;->zzb:Lcom/google/android/gms/internal/ads/SH;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-class p2, Lcom/google/android/gms/internal/ads/OI;

    .line 21
    .line 22
    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/OI;->zzb:Lcom/google/android/gms/internal/ads/SH;

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
    sput-object p1, Lcom/google/android/gms/internal/ads/OI;->zzb:Lcom/google/android/gms/internal/ads/SH;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/OI;->zza:Lcom/google/android/gms/internal/ads/OI;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/MI;

    .line 46
    .line 47
    sget-object p2, Lcom/google/android/gms/internal/ads/OI;->zza:Lcom/google/android/gms/internal/ads/OI;

    .line 48
    .line 49
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/oH;-><init>(Lcom/google/android/gms/internal/ads/qH;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/OI;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/OI;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_4
    const/4 p1, 0x7

    .line 60
    new-array p1, p1, [Ljava/lang/Object;

    .line 61
    .line 62
    const-string p2, "zzc"

    .line 63
    .line 64
    aput-object p2, p1, v1

    .line 65
    .line 66
    const-string p2, "zzd"

    .line 67
    .line 68
    aput-object p2, p1, v0

    .line 69
    .line 70
    const-string p2, "zze"

    .line 71
    .line 72
    const/4 v0, 0x2

    .line 73
    aput-object p2, p1, v0

    .line 74
    .line 75
    const-class p2, Lcom/google/android/gms/internal/ads/LI;

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
    const-string p2, "zzh"

    .line 91
    .line 92
    const/4 v0, 0x6

    .line 93
    aput-object p2, p1, v0

    .line 94
    .line 95
    sget-object p2, Lcom/google/android/gms/internal/ads/OI;->zza:Lcom/google/android/gms/internal/ads/OI;

    .line 96
    .line 97
    const-string v0, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003"

    .line 98
    .line 99
    new-instance v1, Lcom/google/android/gms/internal/ads/XH;

    .line 100
    .line 101
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/XH;-><init>(Lcom/google/android/gms/internal/ads/qH;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-object v1

    .line 105
    :pswitch_5
    if-nez p2, :cond_2

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    :cond_2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/OI;->zzi:B

    .line 109
    .line 110
    const/4 p1, 0x0

    .line 111
    return-object p1

    .line 112
    :pswitch_6
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/OI;->zzi:B

    .line 113
    .line 114
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

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
