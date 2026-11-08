.class public abstract Ls2/g;
.super Lr2/k;
.source "SourceFile"


# instance fields
.field public final T:Ljava/lang/Object;

.field public final U:Lr2/n;

.field public final V:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lr2/n;Lr2/m;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p3, 0x0

    .line 9
    :goto_0
    invoke-direct {p0, p1, p2, p5}, Lr2/k;-><init>(ILjava/lang/String;Lr2/m;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Ls2/g;->T:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p4, p0, Ls2/g;->U:Lr2/n;

    .line 20
    .line 21
    iput-object p3, p0, Ls2/g;->V:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ls2/g;->T:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ls2/g;->U:Lr2/n;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lr2/n;->a(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method public final d()[B
    .locals 5

    .line 1
    const-string v0, "utf-8"

    .line 2
    .line 3
    iget-object v1, p0, Ls2/g;->V:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 v3, 0x2

    .line 15
    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object v1, v3, v4

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    aput-object v0, v3, v1

    .line 22
    .line 23
    const-string v0, "Unsupported Encoding while trying to get the bytes of %s using %s"

    .line 24
    .line 25
    invoke-static {v0, v3}, Lr2/r;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "Volley"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    return-object v2
.end method

.method public final h()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls2/g;->d()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final m(Lr2/i;)LB0/c;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lr2/i;->b:[B

    .line 4
    .line 5
    iget-object v2, p1, Lr2/i;->c:Ljava/util/Map;

    .line 6
    .line 7
    const-string v3, "utf-8"

    .line 8
    .line 9
    invoke-static {v3, v2}, Lp0/b;->z(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lp0/b;->y(Lr2/i;)Lr2/b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, LB0/c;

    .line 26
    .line 27
    invoke-direct {v0, v1, p1}, LB0/c;-><init>(Ljava/lang/Object;Lr2/b;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :goto_0
    new-instance v0, Lr2/h;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Lr2/o;-><init>(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, LB0/c;

    .line 41
    .line 42
    invoke-direct {p1, v0}, LB0/c;-><init>(Lr2/o;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :goto_1
    new-instance v0, Lr2/h;

    .line 47
    .line 48
    invoke-direct {v0, p1}, Lr2/o;-><init>(Ljava/lang/Exception;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, LB0/c;

    .line 52
    .line 53
    invoke-direct {p1, v0}, LB0/c;-><init>(Lr2/o;)V

    .line 54
    .line 55
    .line 56
    return-object p1
.end method
