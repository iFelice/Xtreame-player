.class public final Lcom/google/android/gms/internal/atv_ads_framework/a;
.super Lcom/google/android/gms/internal/atv_ads_framework/U;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/atv_ads_framework/X;

.field private static final zzd:Lcom/google/android/gms/internal/atv_ads_framework/a;


# instance fields
.field private zze:Lcom/google/android/gms/internal/atv_ads_framework/W;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/atv_ads_framework/e0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/atv_ads_framework/a;->zzb:Lcom/google/android/gms/internal/atv_ads_framework/X;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/atv_ads_framework/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/atv_ads_framework/a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/atv_ads_framework/a;->zzd:Lcom/google/android/gms/internal/atv_ads_framework/a;

    .line 14
    .line 15
    const-class v1, Lcom/google/android/gms/internal/atv_ads_framework/a;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/atv_ads_framework/U;->j(Ljava/lang/Class;Lcom/google/android/gms/internal/atv_ads_framework/U;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/atv_ads_framework/U;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/V;->J:Lcom/google/android/gms/internal/atv_ads_framework/V;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/a;->zze:Lcom/google/android/gms/internal/atv_ads_framework/W;

    .line 7
    .line 8
    return-void
.end method

.method public static l()Lcom/google/android/gms/internal/atv_ads_framework/W0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/a;->zzd:Lcom/google/android/gms/internal/atv_ads_framework/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/atv_ads_framework/U;->f()Lcom/google/android/gms/internal/atv_ads_framework/T;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/W0;

    .line 8
    .line 9
    return-object v0
.end method

.method public static m(Lcom/google/android/gms/internal/atv_ads_framework/a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/a;->zze:Lcom/google/android/gms/internal/atv_ads_framework/W;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/atv_ads_framework/F;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/internal/atv_ads_framework/F;->G:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/V;

    .line 12
    .line 13
    iget v1, v0, Lcom/google/android/gms/internal/atv_ads_framework/V;->I:I

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/16 v3, 0xa

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    add-int v3, v1, v1

    .line 21
    .line 22
    :goto_0
    if-lt v3, v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/google/android/gms/internal/atv_ads_framework/V;

    .line 25
    .line 26
    iget-object v4, v0, Lcom/google/android/gms/internal/atv_ads_framework/V;->H:[I

    .line 27
    .line 28
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget v0, v0, Lcom/google/android/gms/internal/atv_ads_framework/V;->I:I

    .line 33
    .line 34
    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/gms/internal/atv_ads_framework/V;-><init>([IIZ)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/a;->zze:Lcom/google/android/gms/internal/atv_ads_framework/W;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/atv_ads_framework/a;->zze:Lcom/google/android/gms/internal/atv_ads_framework/W;

    .line 47
    .line 48
    check-cast p0, Lcom/google/android/gms/internal/atv_ads_framework/V;

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/atv_ads_framework/V;->b(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static n(Lcom/google/android/gms/internal/atv_ads_framework/a;Ljava/util/HashSet;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/a;->zze:Lcom/google/android/gms/internal/atv_ads_framework/W;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/atv_ads_framework/F;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/internal/atv_ads_framework/F;->G:Z

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/V;

    .line 11
    .line 12
    iget v1, v0, Lcom/google/android/gms/internal/atv_ads_framework/V;->I:I

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int v2, v1, v1

    .line 20
    .line 21
    :goto_0
    if-lt v2, v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Lcom/google/android/gms/internal/atv_ads_framework/V;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/google/android/gms/internal/atv_ads_framework/V;->H:[I

    .line 26
    .line 27
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget v0, v0, Lcom/google/android/gms/internal/atv_ads_framework/V;->I:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/atv_ads_framework/V;-><init>([IIZ)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/a;->zze:Lcom/google/android/gms/internal/atv_ads_framework/W;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/V0;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/a;->zze:Lcom/google/android/gms/internal/atv_ads_framework/W;

    .line 63
    .line 64
    iget v0, v0, Lcom/google/android/gms/internal/atv_ads_framework/V0;->G:I

    .line 65
    .line 66
    check-cast v1, Lcom/google/android/gms/internal/atv_ads_framework/V;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/atv_ads_framework/V;->b(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    return-void
.end method


# virtual methods
.method public final d(I)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
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
    sget-object p1, Lcom/google/android/gms/internal/atv_ads_framework/a;->zzd:Lcom/google/android/gms/internal/atv_ads_framework/a;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/atv_ads_framework/W0;

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/a;->zzd:Lcom/google/android/gms/internal/atv_ads_framework/a;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/atv_ads_framework/T;-><init>(Lcom/google/android/gms/internal/atv_ads_framework/U;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/atv_ads_framework/a;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/atv_ads_framework/a;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v1, "zze"

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    aput-object v1, p1, v2

    .line 43
    .line 44
    sget-object v1, Lcom/google/android/gms/internal/atv_ads_framework/e0;->L:Lcom/google/android/gms/internal/atv_ads_framework/e0;

    .line 45
    .line 46
    aput-object v1, p1, v0

    .line 47
    .line 48
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/a;->zzd:Lcom/google/android/gms/internal/atv_ads_framework/a;

    .line 49
    .line 50
    new-instance v1, Lcom/google/android/gms/internal/atv_ads_framework/v0;

    .line 51
    .line 52
    const-string v2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e"

    .line 53
    .line 54
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/atv_ads_framework/v0;-><init>(Lcom/google/android/gms/internal/atv_ads_framework/U;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method
