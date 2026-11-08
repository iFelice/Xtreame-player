.class public final Lcom/google/android/gms/internal/pal/H5;
.super Lcom/google/android/gms/internal/pal/D;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/pal/H5;


# instance fields
.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/H5;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/pal/D;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/pal/H5;->zzb:Lcom/google/android/gms/internal/pal/H5;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/pal/H5;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/pal/D;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/pal/D;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic m()Lcom/google/android/gms/internal/pal/H5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/H5;->zzb:Lcom/google/android/gms/internal/pal/H5;

    return-object v0
.end method


# virtual methods
.method public final l(I)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    add-int/lit8 p1, p1, -0x1

    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    if-eq p1, v2, :cond_3

    .line 9
    .line 10
    if-eq p1, v1, :cond_2

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
    sget-object p1, Lcom/google/android/gms/internal/pal/H5;->zzb:Lcom/google/android/gms/internal/pal/H5;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/pal/y0;

    .line 24
    .line 25
    const/4 v0, 0x6

    .line 26
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/pal/y0;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/pal/H5;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/pal/D;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v1, "zze"

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    aput-object v1, p1, v3

    .line 42
    .line 43
    const-string v1, "zzf"

    .line 44
    .line 45
    aput-object v1, p1, v0

    .line 46
    .line 47
    sget-object v0, Lcom/google/android/gms/internal/pal/k6;->a:Lcom/google/android/gms/internal/pal/k6;

    .line 48
    .line 49
    aput-object v0, p1, v2

    .line 50
    .line 51
    sget-object v0, Lcom/google/android/gms/internal/pal/H5;->zzb:Lcom/google/android/gms/internal/pal/H5;

    .line 52
    .line 53
    new-instance v1, Lcom/google/android/gms/internal/pal/j0;

    .line 54
    .line 55
    const-string v2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    .line 56
    .line 57
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/pal/j0;-><init>(Lcom/google/android/gms/internal/pal/D;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method
