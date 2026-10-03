.class public abstract LK1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Landroid/adservices/measurement/MeasurementManager;


# direct methods
.method public constructor <init>(Landroid/adservices/measurement/MeasurementManager;)V
    .locals 1

    .line 1
    const-string v0, "mMeasurementManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LK1/e;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 10
    .line 11
    return-void
.end method

.method public static b(LK1/e;LK1/a;Lx6/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/e;",
            "LK1/a;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, LJ6/d;

    .line 2
    .line 3
    invoke-static {p2}, LS3/e;->h(Lx6/e;)Lx6/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p1, p2}, LJ6/d;-><init>(Lx6/e;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, LJ6/d;->l()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, LK1/e;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    throw p0
.end method

.method public static d(LK1/e;Lx6/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/e;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, LJ6/d;

    .line 2
    .line 3
    invoke-static {p1}, LS3/e;->h(Lx6/e;)Lx6/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, LJ6/d;-><init>(Lx6/e;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, LJ6/d;->l()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, LK1/e;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 14
    .line 15
    new-instance p1, Lm/a;

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    invoke-direct {p1, v1}, Lm/a;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, LJ/d;

    .line 22
    .line 23
    invoke-direct {v1, v0}, LJ/d;-><init>(LJ6/d;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1, v1}, LA0/F;->s(Landroid/adservices/measurement/MeasurementManager;Lm/a;Landroid/os/OutcomeReceiver;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, LJ6/d;->k()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static g(LK1/e;LK1/f;Lx6/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/e;",
            "LK1/f;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, LK1/d;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, v0}, LK1/d;-><init>(LK1/e;Lx6/e;)V

    .line 5
    .line 6
    .line 7
    new-instance p0, LN6/t;

    .line 8
    .line 9
    invoke-interface {p2}, Lx6/e;->getContext()Lx6/j;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, p2, v1}, LN6/t;-><init>(Lx6/e;Lx6/j;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Ly4/k;->i(LC6/p;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0, p0}, LK1/d;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    new-instance p2, LJ6/k;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {p2, v1, p1}, LJ6/k;-><init>(ZLjava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    move-object p1, p2

    .line 32
    :goto_0
    sget-object p2, Ly6/a;->G:Ly6/a;

    .line 33
    .line 34
    if-ne p1, p2, :cond_0

    .line 35
    .line 36
    :goto_1
    move-object p0, p2

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, LJ6/Q;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object p1, LJ6/r;->e:Lp3/e;

    .line 43
    .line 44
    if-ne p0, p1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    instance-of p1, p0, LJ6/k;

    .line 48
    .line 49
    if-nez p1, :cond_6

    .line 50
    .line 51
    instance-of p1, p0, LJ6/H;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    move-object v0, p0

    .line 56
    check-cast v0, LJ6/H;

    .line 57
    .line 58
    :cond_2
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iget-object p1, v0, LJ6/H;->a:LJ6/G;

    .line 61
    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move-object p0, p1

    .line 66
    :cond_4
    :goto_2
    if-ne p0, p2, :cond_5

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_5
    sget-object p0, Lt6/h;->a:Lt6/h;

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_6
    check-cast p0, LJ6/k;

    .line 73
    .line 74
    iget-object p0, p0, LJ6/k;->a:Ljava/lang/Throwable;

    .line 75
    .line 76
    throw p0
.end method

.method public static h(LK1/e;Landroid/net/Uri;Landroid/view/InputEvent;Lx6/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/e;",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, LJ6/d;

    .line 2
    .line 3
    invoke-static {p3}, LS3/e;->h(Lx6/e;)Lx6/e;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-direct {v0, p3}, LJ6/d;-><init>(Lx6/e;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, LJ6/d;->l()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, LK1/e;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 14
    .line 15
    new-instance p3, Lm/a;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-direct {p3, v1}, Lm/a;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, LJ/d;

    .line 23
    .line 24
    invoke-direct {v1, v0}, LJ/d;-><init>(LJ6/d;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1, p2, p3, v1}, LA0/F;->q(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/InputEvent;Lm/a;Landroid/os/OutcomeReceiver;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, LJ6/d;->k()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object p1, Ly6/a;->G:Ly6/a;

    .line 35
    .line 36
    if-ne p0, p1, :cond_0

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    sget-object p0, Lt6/h;->a:Lt6/h;

    .line 40
    .line 41
    return-object p0
.end method

.method public static j(LK1/e;Landroid/net/Uri;Lx6/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/e;",
            "Landroid/net/Uri;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, LJ6/d;

    .line 2
    .line 3
    invoke-static {p2}, LS3/e;->h(Lx6/e;)Lx6/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {v0, p2}, LJ6/d;-><init>(Lx6/e;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, LJ6/d;->l()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, LK1/e;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 14
    .line 15
    new-instance p2, Lm/a;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-direct {p2, v1}, Lm/a;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, LJ/d;

    .line 22
    .line 23
    invoke-direct {v1, v0}, LJ/d;-><init>(LJ6/d;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1, p2, v1}, LA0/F;->r(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Lm/a;Landroid/os/OutcomeReceiver;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, LJ6/d;->k()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object p1, Ly6/a;->G:Ly6/a;

    .line 34
    .line 35
    if-ne p0, p1, :cond_0

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_0
    sget-object p0, Lt6/h;->a:Lt6/h;

    .line 39
    .line 40
    return-object p0
.end method

.method public static l(LK1/e;LK1/g;Lx6/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/e;",
            "LK1/g;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, LJ6/d;

    .line 2
    .line 3
    invoke-static {p2}, LS3/e;->h(Lx6/e;)Lx6/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p1, p2}, LJ6/d;-><init>(Lx6/e;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, LJ6/d;->l()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, LK1/e;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    throw p0
.end method

.method public static n(LK1/e;LK1/h;Lx6/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/e;",
            "LK1/h;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, LJ6/d;

    .line 2
    .line 3
    invoke-static {p2}, LS3/e;->h(Lx6/e;)Lx6/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p1, p2}, LJ6/d;-><init>(Lx6/e;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, LJ6/d;->l()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, LK1/e;->a:Landroid/adservices/measurement/MeasurementManager;

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    throw p0
.end method


# virtual methods
.method public a(LK1/a;Lx6/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/a;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, LK1/e;->b(LK1/e;LK1/a;Lx6/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Lx6/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, LK1/e;->d(LK1/e;Lx6/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(LK1/f;Lx6/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/f;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, LK1/e;->g(LK1/e;LK1/f;Lx6/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f(Landroid/net/Uri;Landroid/view/InputEvent;Lx6/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, LK1/e;->h(LK1/e;Landroid/net/Uri;Landroid/view/InputEvent;Lx6/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i(Landroid/net/Uri;Lx6/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, LK1/e;->j(LK1/e;Landroid/net/Uri;Lx6/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(LK1/g;Lx6/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/g;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, LK1/e;->l(LK1/e;LK1/g;Lx6/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public m(LK1/h;Lx6/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/h;",
            "Lx6/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, LK1/e;->n(LK1/e;LK1/h;Lx6/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
