.class public final Ll3/f;
.super Ll3/o;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/cb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll3/f;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Ll3/f;->c:Lcom/google/android/gms/internal/ads/cb;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final b(Ll3/X;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, LR3/b;

    .line 2
    .line 3
    iget-object v1, p0, Ll3/f;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ll3/f;->c:Lcom/google/android/gms/internal/ads/cb;

    .line 9
    .line 10
    const v2, 0xe7f3e20

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0, v1, v2}, Ll3/X;->x1(LR3/a;Lcom/google/android/gms/internal/ads/cb;I)Lcom/google/android/gms/internal/ads/dc;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, LR3/b;

    .line 2
    .line 3
    iget-object v1, p0, Ll3/f;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v2, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl"

    .line 9
    .line 10
    new-instance v3, LF2/G;

    .line 11
    .line 12
    const/16 v4, 0x11

    .line 13
    .line 14
    invoke-direct {v3, v4}, LF2/G;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/H1;->G(Landroid/content/Context;Ljava/lang/String;Lp3/i;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/google/android/gms/internal/ads/gc;

    .line 22
    .line 23
    iget-object v2, p0, Ll3/f;->c:Lcom/google/android/gms/internal/ads/cb;

    .line 24
    .line 25
    check-cast v1, Lcom/google/android/gms/internal/ads/ec;

    .line 26
    .line 27
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ec;->z3(LR3/b;Lcom/google/android/gms/internal/ads/cb;)Lcom/google/android/gms/internal/ads/dc;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catch Lp3/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0
.end method
