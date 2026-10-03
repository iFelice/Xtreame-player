.class public final Lcom/google/android/gms/internal/ads/F6;
.super Lcom/google/android/gms/internal/ads/qH;
.source "SourceFile"


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field private static final zzc:Lcom/google/android/gms/internal/ads/F6;

.field private static volatile zzd:Lcom/google/android/gms/internal/ads/SH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/SH;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/F6;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/qH;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/F6;->zzc:Lcom/google/android/gms/internal/ads/F6;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/ads/F6;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qH;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qH;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static A()Lcom/google/android/gms/internal/ads/C6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/F6;->zzc:Lcom/google/android/gms/internal/ads/F6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qH;->g()Lcom/google/android/gms/internal/ads/oH;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/C6;

    .line 8
    .line 9
    return-object v0
.end method

.method public static B(Lcom/google/android/gms/internal/ads/F6;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lu/h;->b(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/F6;->zzf:I

    .line 9
    .line 10
    iget p1, p0, Lcom/google/android/gms/internal/ads/F6;->zze:I

    .line 11
    .line 12
    or-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/F6;->zze:I

    .line 15
    .line 16
    return-void
.end method

.method public static C(Lcom/google/android/gms/internal/ads/F6;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, La/r;->b(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/F6;->zzg:I

    .line 9
    .line 10
    iget p1, p0, Lcom/google/android/gms/internal/ads/F6;->zze:I

    .line 11
    .line 12
    or-int/lit8 p1, p1, 0x2

    .line 13
    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/F6;->zze:I

    .line 15
    .line 16
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
    sget-object p1, Lcom/google/android/gms/internal/ads/F6;->zzd:Lcom/google/android/gms/internal/ads/SH;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class p2, Lcom/google/android/gms/internal/ads/F6;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/F6;->zzd:Lcom/google/android/gms/internal/ads/SH;

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
    sput-object p1, Lcom/google/android/gms/internal/ads/F6;->zzd:Lcom/google/android/gms/internal/ads/SH;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/F6;->zzc:Lcom/google/android/gms/internal/ads/F6;

    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/C6;

    .line 45
    .line 46
    sget-object p2, Lcom/google/android/gms/internal/ads/F6;->zzc:Lcom/google/android/gms/internal/ads/F6;

    .line 47
    .line 48
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/oH;-><init>(Lcom/google/android/gms/internal/ads/qH;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/F6;

    .line 53
    .line 54
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/qH;-><init>()V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_4
    const/4 p1, 0x5

    .line 59
    new-array p1, p1, [Ljava/lang/Object;

    .line 60
    .line 61
    const-string v0, "zze"

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    aput-object v0, p1, v1

    .line 65
    .line 66
    const-string v0, "zzf"

    .line 67
    .line 68
    aput-object v0, p1, p2

    .line 69
    .line 70
    sget-object p2, Lcom/google/android/gms/internal/ads/E6;->a:Lcom/google/android/gms/internal/ads/E6;

    .line 71
    .line 72
    const/4 v0, 0x2

    .line 73
    aput-object p2, p1, v0

    .line 74
    .line 75
    const-string p2, "zzg"

    .line 76
    .line 77
    const/4 v0, 0x3

    .line 78
    aput-object p2, p1, v0

    .line 79
    .line 80
    sget-object p2, Lcom/google/android/gms/internal/ads/D6;->a:Lcom/google/android/gms/internal/ads/D6;

    .line 81
    .line 82
    const/4 v0, 0x4

    .line 83
    aput-object p2, p1, v0

    .line 84
    .line 85
    sget-object p2, Lcom/google/android/gms/internal/ads/F6;->zzc:Lcom/google/android/gms/internal/ads/F6;

    .line 86
    .line 87
    const-string v0, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001"

    .line 88
    .line 89
    new-instance v1, Lcom/google/android/gms/internal/ads/XH;

    .line 90
    .line 91
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/XH;-><init>(Lcom/google/android/gms/internal/ads/qH;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-object v1

    .line 95
    :pswitch_5
    const/4 p1, 0x0

    .line 96
    return-object p1

    .line 97
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    nop

    .line 103
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
