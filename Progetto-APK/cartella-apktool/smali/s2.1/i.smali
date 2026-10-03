.class public final Ls2/i;
.super Lr2/k;
.source "SourceFile"


# instance fields
.field public final T:Ljava/lang/Object;

.field public final U:Lr2/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpe/hf/black20/util/c;Lpe/hf/black20/util/c;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p3}, Lr2/k;-><init>(ILjava/lang/String;Lr2/m;)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Ls2/i;->T:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p0, Ls2/i;->U:Lr2/n;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Ls2/i;->T:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Ls2/i;->U:Lr2/n;

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1, p1}, Lr2/n;->a(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1
.end method

.method public final m(Lr2/i;)LB0/c;
    .locals 4

    .line 1
    iget-object v0, p1, Lr2/i;->b:[B

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p1, Lr2/i;->c:Ljava/util/Map;

    .line 6
    .line 7
    const-string v3, "ISO-8859-1"

    .line 8
    .line 9
    invoke-static {v3, v2}, Lp0/b;->z(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    new-instance v1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {p1}, Lp0/b;->y(Lr2/i;)Lr2/b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, LB0/c;

    .line 27
    .line 28
    invoke-direct {v0, v1, p1}, LB0/c;-><init>(Ljava/lang/Object;Lr2/b;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
