.class public final Lcom/google/android/gms/internal/ads/xa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ta;
.implements Lcom/google/android/gms/internal/ads/La;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Ef;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp3/a;)V
    .locals 16

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 5
    .line 6
    iget-object v0, v0, Lk3/l;->d:Lcom/google/android/gms/internal/ads/y1;

    .line 7
    .line 8
    new-instance v2, LA2/i;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-direct {v2, v0, v0, v0, v1}, LA2/i;-><init>(IIII)V

    .line 13
    .line 14
    .line 15
    new-instance v7, Lcom/google/android/gms/internal/ads/w6;

    .line 16
    .line 17
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/w6;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v14, 0x0

    .line 21
    const/4 v15, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v12, 0x0

    .line 30
    const-string v13, ""

    .line 31
    .line 32
    move-object/from16 v1, p1

    .line 33
    .line 34
    move-object/from16 v3, p2

    .line 35
    .line 36
    invoke-static/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/y1;->e(Landroid/content/Context;LA2/i;Lp3/a;Lk3/a;Lcom/google/android/gms/internal/ads/Of;Lcom/google/android/gms/internal/ads/H4;Lcom/google/android/gms/internal/ads/w6;Lcom/google/android/gms/internal/ads/e8;Lcom/google/android/gms/internal/ads/hq;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Qv;Lcom/google/android/gms/internal/ads/Zv;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/Ef;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object/from16 v1, p0

    .line 41
    .line 42
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/xa;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/ads/ua;)V
    .locals 2

    .line 1
    sget-object v0, Ll3/p;->f:Ll3/p;

    .line 2
    .line 3
    iget-object v0, v0, Ll3/p;->a:Lp3/d;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const-string v0, "runOnUiThread > the UI thread is the main thread, the runnable will be run now"

    .line 16
    .line 17
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ua;->run()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string v0, "runOnUiThread > the UI thread is not the main thread, the runnable will be added to the message queue"

    .line 25
    .line 26
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    const-string p0, "runOnUiThread > the runnable could not be placed to the message queue"

    .line 38
    .line 39
    invoke-static {p0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public final C(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/wa;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/wa;-><init>(Lcom/google/android/gms/internal/ads/xa;Lcom/google/android/gms/internal/ads/N9;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xa;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 7
    .line 8
    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/Ef;->L0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final synthetic b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p2, p1}, Lf/b;->r0(Lcom/google/android/gms/internal/ads/ta;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "invokeJavascript on adWebView from js"

    .line 2
    .line 3
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/ua;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/ua;-><init>(Lcom/google/android/gms/internal/ads/xa;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xa;->a(Lcom/google/android/gms/internal/ads/ua;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "("

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, ");"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/xa;->c(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final g(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/xa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Ll3/p;->f:Ll3/p;

    .line 2
    .line 3
    iget-object v0, v0, Ll3/p;->a:Lp3/d;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lp3/d;->i(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/xa;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const-string p1, "Could not convert parameters to JSON."

    .line 14
    .line 15
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final z(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/K4;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/K4;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/xa;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 9
    .line 10
    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/Ef;->V(Ljava/lang/String;Lcom/google/android/gms/internal/ads/K4;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
