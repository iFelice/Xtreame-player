.class public final Lcom/google/android/gms/internal/measurement/F0;
.super Lcom/google/android/gms/internal/measurement/s2;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/F0;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/y2;

.field private zzf:Lcom/google/android/gms/internal/measurement/y2;

.field private zzg:Lcom/google/android/gms/internal/measurement/y2;

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/measurement/y2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/F0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/F0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/F0;->zzb:Lcom/google/android/gms/internal/measurement/F0;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/F0;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/s2;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/s2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/s2;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/W2;->K:Lcom/google/android/gms/internal/measurement/W2;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/F0;->zze:Lcom/google/android/gms/internal/measurement/y2;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/F0;->zzf:Lcom/google/android/gms/internal/measurement/y2;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/F0;->zzg:Lcom/google/android/gms/internal/measurement/y2;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/F0;->zzi:Lcom/google/android/gms/internal/measurement/y2;

    .line 13
    .line 14
    return-void
.end method

.method public static bridge synthetic q()Lcom/google/android/gms/internal/measurement/F0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/F0;->zzb:Lcom/google/android/gms/internal/measurement/F0;

    return-object v0
.end method

.method public static r()Lcom/google/android/gms/internal/measurement/F0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/F0;->zzb:Lcom/google/android/gms/internal/measurement/F0;

    return-object v0
.end method


# virtual methods
.method public final p(I)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x5

    .line 4
    const/4 v3, 0x4

    .line 5
    const/4 v4, 0x3

    .line 6
    const/4 v5, 0x2

    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    if-eqz p1, :cond_4

    .line 10
    .line 11
    if-eq p1, v5, :cond_3

    .line 12
    .line 13
    if-eq p1, v4, :cond_2

    .line 14
    .line 15
    if-eq p1, v3, :cond_1

    .line 16
    .line 17
    if-ne p1, v2, :cond_0

    .line 18
    .line 19
    sget-object p1, Lcom/google/android/gms/internal/measurement/F0;->zzb:Lcom/google/android/gms/internal/measurement/F0;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    throw p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/t0;

    .line 25
    .line 26
    invoke-direct {p1, v5, v1}, Lcom/google/android/gms/internal/measurement/t0;-><init>(II)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/F0;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/F0;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    const/16 p1, 0xa

    .line 37
    .line 38
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v6, "zzd"

    .line 41
    .line 42
    aput-object v6, p1, v1

    .line 43
    .line 44
    const-string v1, "zze"

    .line 45
    .line 46
    aput-object v1, p1, v0

    .line 47
    .line 48
    const-class v0, Lcom/google/android/gms/internal/measurement/A0;

    .line 49
    .line 50
    aput-object v0, p1, v5

    .line 51
    .line 52
    const-string v1, "zzf"

    .line 53
    .line 54
    aput-object v1, p1, v4

    .line 55
    .line 56
    const-class v1, Lcom/google/android/gms/internal/measurement/B0;

    .line 57
    .line 58
    aput-object v1, p1, v3

    .line 59
    .line 60
    const-string v1, "zzg"

    .line 61
    .line 62
    aput-object v1, p1, v2

    .line 63
    .line 64
    const-class v1, Lcom/google/android/gms/internal/measurement/E0;

    .line 65
    .line 66
    const/4 v2, 0x6

    .line 67
    aput-object v1, p1, v2

    .line 68
    .line 69
    const-string v1, "zzh"

    .line 70
    .line 71
    const/4 v2, 0x7

    .line 72
    aput-object v1, p1, v2

    .line 73
    .line 74
    const-string v1, "zzi"

    .line 75
    .line 76
    const/16 v2, 0x8

    .line 77
    .line 78
    aput-object v1, p1, v2

    .line 79
    .line 80
    const/16 v1, 0x9

    .line 81
    .line 82
    aput-object v0, p1, v1

    .line 83
    .line 84
    sget-object v0, Lcom/google/android/gms/internal/measurement/F0;->zzb:Lcom/google/android/gms/internal/measurement/F0;

    .line 85
    .line 86
    new-instance v1, Lcom/google/android/gms/internal/measurement/X2;

    .line 87
    .line 88
    const-string v2, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004\u1007\u0000\u0005\u001b"

    .line 89
    .line 90
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/X2;-><init>(Lcom/google/android/gms/internal/measurement/s2;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1
.end method

.method public final s()Lcom/google/android/gms/internal/measurement/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/F0;->zzg:Lcom/google/android/gms/internal/measurement/y2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Lcom/google/android/gms/internal/measurement/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/F0;->zze:Lcom/google/android/gms/internal/measurement/y2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Lcom/google/android/gms/internal/measurement/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/F0;->zzf:Lcom/google/android/gms/internal/measurement/y2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/F0;->zzi:Lcom/google/android/gms/internal/measurement/y2;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/F0;->zzh:Z

    return v0
.end method

.method public final x()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/F0;->zzd:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
