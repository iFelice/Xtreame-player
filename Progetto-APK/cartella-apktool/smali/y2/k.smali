.class public final Ly2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lw2/c;Ljava/lang/Object;Lw2/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly2/k;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Ly2/k;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Ly2/k;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ly2/p;LL2/g;Ly2/t;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/k;->c:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Ly2/k;->b:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Ly2/k;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(LJ3/k;Lw2/l;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, LJ3/k;->a()LA2/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Ly2/k;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lw2/i;

    .line 8
    .line 9
    new-instance v1, Ly2/k;

    .line 10
    .line 11
    iget-object v2, p0, Ly2/k;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Lw2/o;

    .line 14
    .line 15
    iget-object v3, p0, Ly2/k;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Ly2/C;

    .line 18
    .line 19
    invoke-direct {v1, v2, v3, p2}, Ly2/k;-><init>(Lw2/c;Ljava/lang/Object;Lw2/l;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0, v1}, LA2/a;->c(Lw2/i;Ly2/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Ly2/k;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Ly2/C;

    .line 28
    .line 29
    invoke-virtual {p1}, Ly2/C;->a()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    iget-object p2, p0, Ly2/k;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p2, Ly2/C;

    .line 37
    .line 38
    invoke-virtual {p2}, Ly2/C;->a()V

    .line 39
    .line 40
    .line 41
    throw p1
.end method
