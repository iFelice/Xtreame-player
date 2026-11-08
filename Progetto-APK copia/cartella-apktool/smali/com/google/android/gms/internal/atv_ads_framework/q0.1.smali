.class public final Lcom/google/android/gms/internal/atv_ads_framework/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/atv_ads_framework/w0;


# instance fields
.field public final a:Lcom/google/android/gms/internal/atv_ads_framework/E;

.field public final b:Lcom/google/android/gms/internal/atv_ads_framework/A0;

.field public final c:Lcom/google/android/gms/internal/atv_ads_framework/N;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/atv_ads_framework/A0;Lcom/google/android/gms/internal/atv_ads_framework/N;Lcom/google/android/gms/internal/atv_ads_framework/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/q0;->b:Lcom/google/android/gms/internal/atv_ads_framework/A0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/atv_ads_framework/q0;->c:Lcom/google/android/gms/internal/atv_ads_framework/N;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/atv_ads_framework/q0;->a:Lcom/google/android/gms/internal/atv_ads_framework/E;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q0;->b:Lcom/google/android/gms/internal/atv_ads_framework/A0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/atv_ads_framework/A0;->c(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q0;->c:Lcom/google/android/gms/internal/atv_ads_framework/N;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    throw p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q0;->b:Lcom/google/android/gms/internal/atv_ads_framework/A0;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/atv_ads_framework/y0;->a(Lcom/google/android/gms/internal/atv_ads_framework/A0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q0;->c:Lcom/google/android/gms/internal/atv_ads_framework/N;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public final d(Ljava/lang/Object;Lcom/google/android/gms/internal/atv_ads_framework/M;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/atv_ads_framework/q0;->c:Lcom/google/android/gms/internal/atv_ads_framework/N;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public final zza(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q0;->b:Lcom/google/android/gms/internal/atv_ads_framework/A0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/atv_ads_framework/U;->zzc:Lcom/google/android/gms/internal/atv_ads_framework/z0;

    .line 9
    .line 10
    iget v0, p1, Lcom/google/android/gms/internal/atv_ads_framework/z0;->c:I

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p1, Lcom/google/android/gms/internal/atv_ads_framework/z0;->c:I

    .line 17
    .line 18
    :cond_0
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q0;->b:Lcom/google/android/gms/internal/atv_ads_framework/A0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/atv_ads_framework/U;->zzc:Lcom/google/android/gms/internal/atv_ads_framework/z0;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const p1, 0x7bc6f

    .line 14
    .line 15
    .line 16
    return p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/atv_ads_framework/U;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q0;->a:Lcom/google/android/gms/internal/atv_ads_framework/E;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/atv_ads_framework/U;->d(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/atv_ads_framework/U;->d(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/T;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/atv_ads_framework/T;->c()Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/q0;->b:Lcom/google/android/gms/internal/atv_ads_framework/A0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/atv_ads_framework/U;->zzc:Lcom/google/android/gms/internal/atv_ads_framework/z0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    check-cast p2, Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/google/android/gms/internal/atv_ads_framework/U;->zzc:Lcom/google/android/gms/internal/atv_ads_framework/z0;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/atv_ads_framework/z0;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    return p1
.end method
