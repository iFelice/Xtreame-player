.class public final Lcom/google/android/gms/internal/measurement/G0;
.super Lcom/google/android/gms/internal/measurement/s2;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/G0;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/measurement/y2;

.field private zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/G0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/G0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/G0;->zzb:Lcom/google/android/gms/internal/measurement/G0;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/G0;

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
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/G0;->zze:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/measurement/W2;->K:Lcom/google/android/gms/internal/measurement/W2;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/G0;->zzf:Lcom/google/android/gms/internal/measurement/y2;

    .line 11
    .line 12
    return-void
.end method

.method public static bridge synthetic q()Lcom/google/android/gms/internal/measurement/G0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/G0;->zzb:Lcom/google/android/gms/internal/measurement/G0;

    return-object v0
.end method


# virtual methods
.method public final p(I)Ljava/lang/Object;
    .locals 6

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/G0;->zzb:Lcom/google/android/gms/internal/measurement/G0;

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
    const/4 v0, 0x6

    .line 27
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/t0;-><init>(II)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/G0;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/G0;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v2, "zzd"

    .line 40
    .line 41
    aput-object v2, p1, v1

    .line 42
    .line 43
    const-string v1, "zze"

    .line 44
    .line 45
    aput-object v1, p1, v0

    .line 46
    .line 47
    const-string v0, "zzf"

    .line 48
    .line 49
    aput-object v0, p1, v5

    .line 50
    .line 51
    const-class v0, Lcom/google/android/gms/internal/measurement/N0;

    .line 52
    .line 53
    aput-object v0, p1, v4

    .line 54
    .line 55
    const-string v0, "zzg"

    .line 56
    .line 57
    aput-object v0, p1, v3

    .line 58
    .line 59
    sget-object v0, Lcom/google/android/gms/internal/measurement/G0;->zzb:Lcom/google/android/gms/internal/measurement/G0;

    .line 60
    .line 61
    new-instance v1, Lcom/google/android/gms/internal/measurement/X2;

    .line 62
    .line 63
    const-string v2, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1007\u0001"

    .line 64
    .line 65
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/X2;-><init>(Lcom/google/android/gms/internal/measurement/s2;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/G0;->zze:Ljava/lang/String;

    return-object v0
.end method
