.class public final Lcom/google/android/gms/internal/ads/gJ;
.super Lcom/google/android/gms/internal/ads/qH;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/gJ;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/SH;


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/ads/OI;

.field private zzg:Lcom/google/android/gms/internal/ads/QI;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/uH;

.field private zzj:Ljava/lang/String;

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/ads/xH;

.field private zzm:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/gJ;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gJ;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/gJ;->zza:Lcom/google/android/gms/internal/ads/gJ;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/gJ;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qH;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qH;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qH;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/gJ;->zzm:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gJ;->zze:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v1, Lcom/google/android/gms/internal/ads/rH;->J:Lcom/google/android/gms/internal/ads/rH;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/gJ;->zzi:Lcom/google/android/gms/internal/ads/uH;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gJ;->zzj:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/WH;->J:Lcom/google/android/gms/internal/ads/WH;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gJ;->zzl:Lcom/google/android/gms/internal/ads/xH;

    .line 20
    .line 21
    return-void
.end method

.method public static B()Lcom/google/android/gms/internal/ads/fJ;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/gJ;->zza:Lcom/google/android/gms/internal/ads/gJ;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qH;->g()Lcom/google/android/gms/internal/ads/oH;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/fJ;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic D(Lcom/google/android/gms/internal/ads/gJ;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/gJ;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/gJ;->zzc:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/gJ;->zzd:I

    return-void
.end method

.method public static synthetic E(Lcom/google/android/gms/internal/ads/gJ;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/gJ;->zzc:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/gJ;->zzc:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gJ;->zze:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic F(Lcom/google/android/gms/internal/ads/gJ;Lcom/google/android/gms/internal/ads/OI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gJ;->zzf:Lcom/google/android/gms/internal/ads/OI;

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/ads/gJ;->zzc:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x4

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/gJ;->zzc:I

    .line 8
    .line 9
    return-void
.end method

.method public static G(Lcom/google/android/gms/internal/ads/gJ;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gJ;->zzl:Lcom/google/android/gms/internal/ads/xH;

    .line 5
    .line 6
    move-object v1, v0

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/ads/QG;

    .line 8
    .line 9
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/QG;->G:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qH;->h(Lcom/google/android/gms/internal/ads/xH;)Lcom/google/android/gms/internal/ads/xH;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gJ;->zzl:Lcom/google/android/gms/internal/ads/xH;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/gJ;->zzl:Lcom/google/android/gms/internal/ads/xH;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic H(Lcom/google/android/gms/internal/ads/gJ;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/gJ;->zzk:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/gJ;->zzc:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/gJ;->zzc:I

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gJ;->zzl:Lcom/google/android/gms/internal/ads/xH;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gJ;->zze:Ljava/lang/String;

    return-object v0
.end method

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
    sget-object p1, Lcom/google/android/gms/internal/ads/gJ;->zzb:Lcom/google/android/gms/internal/ads/SH;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-class p2, Lcom/google/android/gms/internal/ads/gJ;

    .line 21
    .line 22
    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/gJ;->zzb:Lcom/google/android/gms/internal/ads/SH;

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
    sput-object p1, Lcom/google/android/gms/internal/ads/gJ;->zzb:Lcom/google/android/gms/internal/ads/SH;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/gJ;->zza:Lcom/google/android/gms/internal/ads/gJ;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/fJ;

    .line 46
    .line 47
    sget-object p2, Lcom/google/android/gms/internal/ads/gJ;->zza:Lcom/google/android/gms/internal/ads/gJ;

    .line 48
    .line 49
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/oH;-><init>(Lcom/google/android/gms/internal/ads/qH;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/gJ;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/gJ;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_4
    const/16 p1, 0xb

    .line 60
    .line 61
    new-array p1, p1, [Ljava/lang/Object;

    .line 62
    .line 63
    const-string p2, "zzc"

    .line 64
    .line 65
    aput-object p2, p1, v1

    .line 66
    .line 67
    const-string p2, "zzd"

    .line 68
    .line 69
    aput-object p2, p1, v0

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
    const-string p2, "zzk"

    .line 102
    .line 103
    const/16 v0, 0x8

    .line 104
    .line 105
    aput-object p2, p1, v0

    .line 106
    .line 107
    sget-object p2, Lcom/google/android/gms/internal/ads/eJ;->a:Lcom/google/android/gms/internal/ads/eJ;

    .line 108
    .line 109
    const/16 v0, 0x9

    .line 110
    .line 111
    aput-object p2, p1, v0

    .line 112
    .line 113
    const-string p2, "zzl"

    .line 114
    .line 115
    const/16 v0, 0xa

    .line 116
    .line 117
    aput-object p2, p1, v0

    .line 118
    .line 119
    sget-object p2, Lcom/google/android/gms/internal/ads/gJ;->zza:Lcom/google/android/gms/internal/ads/gJ;

    .line 120
    .line 121
    const-string v0, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u1504\u0000\u0002\u1008\u0001\u0003\u1409\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u0016\u0007\u1008\u0005\u0008\u180c\u0006\t\u001a"

    .line 122
    .line 123
    new-instance v1, Lcom/google/android/gms/internal/ads/XH;

    .line 124
    .line 125
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/XH;-><init>(Lcom/google/android/gms/internal/ads/qH;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-object v1

    .line 129
    :pswitch_5
    if-nez p2, :cond_2

    .line 130
    .line 131
    const/4 v0, 0x0

    .line 132
    :cond_2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/gJ;->zzm:B

    .line 133
    .line 134
    const/4 p1, 0x0

    .line 135
    return-object p1

    .line 136
    :pswitch_6
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/gJ;->zzm:B

    .line 137
    .line 138
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    return-object p1

    .line 143
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
