.class public final Lcom/google/android/gms/internal/pal/l5;
.super Lcom/google/android/gms/internal/pal/D;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/pal/l5;


# instance fields
.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/l5;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/pal/D;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/pal/l5;->zzb:Lcom/google/android/gms/internal/pal/l5;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/pal/l5;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/pal/D;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/pal/D;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static n()Lcom/google/android/gms/internal/pal/k5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/l5;->zzb:Lcom/google/android/gms/internal/pal/l5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/D;->h()Lcom/google/android/gms/internal/pal/C;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/pal/k5;

    .line 8
    .line 9
    return-object v0
.end method

.method public static o()Lcom/google/android/gms/internal/pal/l5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/l5;->zzb:Lcom/google/android/gms/internal/pal/l5;

    return-object v0
.end method

.method public static synthetic p(Lcom/google/android/gms/internal/pal/l5;)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/pal/l5;->zze:I

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final l(I)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/lit8 p1, p1, -0x1

    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p1, v1, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/pal/l5;->zzb:Lcom/google/android/gms/internal/pal/l5;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/pal/k5;

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/pal/l5;->zzb:Lcom/google/android/gms/internal/pal/l5;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/pal/C;-><init>(Lcom/google/android/gms/internal/pal/D;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/pal/l5;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/pal/D;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v0, "zze"

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    aput-object v0, p1, v1

    .line 43
    .line 44
    sget-object v0, Lcom/google/android/gms/internal/pal/l5;->zzb:Lcom/google/android/gms/internal/pal/l5;

    .line 45
    .line 46
    new-instance v1, Lcom/google/android/gms/internal/pal/j0;

    .line 47
    .line 48
    const-string v2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b"

    .line 49
    .line 50
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/pal/j0;-><init>(Lcom/google/android/gms/internal/pal/D;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/l5;->zze:I

    return v0
.end method
