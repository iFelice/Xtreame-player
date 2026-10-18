.class public final LU2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/e;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:LU2/i;

.field public final c:LU2/p;


# direct methods
.method public constructor <init>(Ljava/util/Set;LU2/i;LU2/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LU2/o;->a:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, LU2/o;->b:LU2/i;

    .line 7
    .line 8
    iput-object p3, p0, LU2/o;->c:LU2/p;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;LR2/b;LR2/d;)Lo/j;
    .locals 3

    .line 1
    iget-object v0, p0, LU2/o;->a:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lo/j;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, LU2/o;->b:LU2/i;

    .line 15
    .line 16
    iput-object v1, v0, Lo/j;->G:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, v0, Lo/j;->H:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p2, v0, Lo/j;->I:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p3, v0, Lo/j;->J:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object p1, p0, LU2/o;->c:LU2/p;

    .line 25
    .line 26
    iput-object p1, v0, Lo/j;->K:Ljava/lang/Object;

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p3, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    aput-object p2, v1, v2

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    aput-object v0, v1, p2

    .line 41
    .line 42
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method
