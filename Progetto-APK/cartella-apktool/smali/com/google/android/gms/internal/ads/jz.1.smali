.class public final Lcom/google/android/gms/internal/ads/jz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/ads/J;

.field public static final d:Landroid/content/Intent;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/pz;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/J;

    .line 2
    .line 3
    const-string v1, "OverlayDisplayService"

    .line 4
    .line 5
    const/16 v2, 0xb

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/J;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v1, "com.google.android.play.core.lmd.BIND_OVERLAY_DISPLAY_SERVICE"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "com.android.vending"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/ads/jz;->d:Landroid/content/Intent;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qz;->a(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/pz;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 17
    .line 18
    sget-object v3, Lcom/google/android/gms/internal/ads/jz;->d:Landroid/content/Intent;

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/pz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/J;Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jz;->a:Lcom/google/android/gms/internal/ads/pz;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jz;->a:Lcom/google/android/gms/internal/ads/pz;

    .line 28
    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jz;->b:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/gz;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move-object v0, p0

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/uc;->s(Lcom/google/android/gms/internal/ads/gz;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public static c(LC2/g;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2

    .line 1
    invoke-static {p2}, Lc4/J0;->r(Ljava/util/List;)Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/hz;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lc4/J0;->C(Ljava/util/stream/Stream;Lcom/google/android/gms/internal/ads/hz;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p2, 0x0

    .line 19
    new-array v0, p2, [Ljava/lang/Object;

    .line 20
    .line 21
    sget-object v1, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 22
    .line 23
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/J;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/google/android/gms/internal/ads/ez;

    .line 27
    .line 28
    const/16 v0, 0x1fe0

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/ez;-><init>(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, LC2/g;->u(Lcom/google/android/gms/internal/ads/ez;)V

    .line 35
    .line 36
    .line 37
    return p2
.end method


# virtual methods
.method public final a(ILC2/g;Lcom/google/android/gms/internal/ads/fz;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jz;->a:Lcom/google/android/gms/internal/ads/pz;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-array p1, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string p2, "Play Store not found."

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    aput-object p2, p1, p3

    .line 12
    .line 13
    const-string p2, "error: %s"

    .line 14
    .line 15
    sget-object p3, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 16
    .line 17
    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/internal/ads/J;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v2, p3, Lcom/google/android/gms/internal/ads/fz;->b:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p3, Lcom/google/android/gms/internal/ads/fz;->a:Ljava/lang/String;

    .line 24
    .line 25
    filled-new-array {v3, v2}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "Failed to apply OverlayDisplayUpdateRequest: missing appId and sessionToken."

    .line 34
    .line 35
    invoke-static {p2, v3, v2}, Lcom/google/android/gms/internal/ads/jz;->c(LC2/g;Ljava/lang/String;Ljava/util/List;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/gf;

    .line 43
    .line 44
    invoke-direct {v2, p0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/gf;-><init>(Lcom/google/android/gms/internal/ads/jz;Lcom/google/android/gms/internal/ads/fz;ILC2/g;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lcom/google/android/gms/internal/ads/mz;

    .line 48
    .line 49
    invoke-direct {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/mz;-><init>(Lcom/google/android/gms/internal/ads/pz;Ljava/lang/Runnable;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/pz;->a(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
