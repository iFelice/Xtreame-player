.class public final Lcom/google/android/gms/internal/pal/F2;
.super Lcom/google/android/gms/internal/pal/D;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/pal/F2;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/pal/r3;

.field private zzg:Lcom/google/android/gms/internal/pal/o4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/F2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/pal/D;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/pal/F2;->zzb:Lcom/google/android/gms/internal/pal/F2;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/pal/F2;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/pal/D;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/pal/D;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic m()Lcom/google/android/gms/internal/pal/F2;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/F2;->zzb:Lcom/google/android/gms/internal/pal/F2;

    return-object v0
.end method

.method public static n([BLcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/F2;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/F2;->zzb:Lcom/google/android/gms/internal/pal/F2;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/pal/D;->k(Lcom/google/android/gms/internal/pal/D;[BLcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/D;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/pal/F2;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public final l(I)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    add-int/lit8 p1, p1, -0x1

    .line 6
    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    if-eq p1, v3, :cond_3

    .line 10
    .line 11
    if-eq p1, v2, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/pal/F2;->zzb:Lcom/google/android/gms/internal/pal/F2;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/pal/y0;

    .line 25
    .line 26
    invoke-direct {p1, v2, v1}, Lcom/google/android/gms/internal/pal/y0;-><init>(II)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/pal/F2;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/pal/D;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v2, "zze"

    .line 39
    .line 40
    aput-object v2, p1, v1

    .line 41
    .line 42
    const-string v1, "zzf"

    .line 43
    .line 44
    aput-object v1, p1, v0

    .line 45
    .line 46
    const-string v0, "zzg"

    .line 47
    .line 48
    aput-object v0, p1, v3

    .line 49
    .line 50
    sget-object v0, Lcom/google/android/gms/internal/pal/F2;->zzb:Lcom/google/android/gms/internal/pal/F2;

    .line 51
    .line 52
    new-instance v1, Lcom/google/android/gms/internal/pal/j0;

    .line 53
    .line 54
    const-string v2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    .line 55
    .line 56
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/pal/j0;-><init>(Lcom/google/android/gms/internal/pal/D;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public final o()Lcom/google/android/gms/internal/pal/r3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/F2;->zzf:Lcom/google/android/gms/internal/pal/r3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/pal/r3;->n()Lcom/google/android/gms/internal/pal/r3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/pal/o4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/F2;->zzg:Lcom/google/android/gms/internal/pal/o4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/pal/o4;->n()Lcom/google/android/gms/internal/pal/o4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final q()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/F2;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/F2;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
