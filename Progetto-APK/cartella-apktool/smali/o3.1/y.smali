.class public final Lo3/y;
.super Lo3/n;
.source "SourceFile"


# instance fields
.field public final b:Lp3/k;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 2
    .line 3
    iget-object v0, v0, Lk3/l;->c:Lo3/O;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lo3/O;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0}, Lo3/n;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance p2, Lp3/k;

    .line 13
    .line 14
    invoke-direct {p2, p1}, Lp3/k;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lo3/y;->b:Lp3/k;

    .line 18
    .line 19
    iput-object p3, p0, Lo3/y;->c:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo3/y;->b:Lp3/k;

    .line 2
    .line 3
    iget-object v1, p0, Lo3/y;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lp3/k;->c(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
