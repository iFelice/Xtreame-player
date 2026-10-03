.class public final Lcom/google/android/gms/internal/ads/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/X9;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Fj;

.field public final H:Lcom/google/android/gms/internal/ads/ld;

.field public final I:Ljava/lang/String;

.field public final J:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Fj;Lcom/google/android/gms/internal/ads/Ov;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/an;->G:Lcom/google/android/gms/internal/ads/Fj;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/Ov;->l:Lcom/google/android/gms/internal/ads/ld;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/an;->H:Lcom/google/android/gms/internal/ads/ld;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/Ov;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/an;->I:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/Ov;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/an;->J:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final G(Lcom/google/android/gms/internal/ads/ld;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/an;->H:Lcom/google/android/gms/internal/ads/ld;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object p1, v0

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ld;->G:Ljava/lang/String;

    .line 9
    .line 10
    iget p1, p1, Lcom/google/android/gms/internal/ads/ld;->H:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 p1, 0x1

    .line 14
    const-string v0, ""

    .line 15
    .line 16
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/bd;

    .line 17
    .line 18
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/bd;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/an;->G:Lcom/google/android/gms/internal/ads/Fj;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/Ej;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/an;->I:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/an;->J:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/Ej;-><init>(Lcom/google/android/gms/internal/ads/dd;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/mI;->Z0(Lcom/google/android/gms/internal/ads/rk;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/an;->G:Lcom/google/android/gms/internal/ads/Fj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fj;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/an;->G:Lcom/google/android/gms/internal/ads/Fj;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, LF2/G;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-direct {v1, v2}, LF2/G;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mI;->Z0(Lcom/google/android/gms/internal/ads/rk;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
