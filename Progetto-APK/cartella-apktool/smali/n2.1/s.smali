.class public final Ln2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final M:Ljava/lang/String;


# instance fields
.field public final G:Lo2/j;

.field public final H:Landroid/content/Context;

.field public final I:Lm2/q;

.field public final J:Ld2/m;

.field public final K:Ld2/g;

.field public final L:Lp2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkForegroundRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Ld2/n;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ln2/s;->M:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lm2/q;Ld2/m;Ln2/u;Lp2/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lo2/j;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ln2/s;->G:Lo2/j;

    .line 10
    .line 11
    iput-object p1, p0, Ln2/s;->H:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Ln2/s;->I:Lm2/q;

    .line 14
    .line 15
    iput-object p3, p0, Ln2/s;->J:Ld2/m;

    .line 16
    .line 17
    iput-object p4, p0, Ln2/s;->K:Ld2/g;

    .line 18
    .line 19
    iput-object p5, p0, Ln2/s;->L:Lp2/a;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln2/s;->I:Lm2/q;

    .line 2
    .line 3
    iget-boolean v0, v0, Lm2/q;->q:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lo2/j;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Ln2/s;->L:Lp2/a;

    .line 20
    .line 21
    move-object v2, v1

    .line 22
    check-cast v2, Lm2/u;

    .line 23
    .line 24
    iget-object v2, v2, Lm2/u;->J:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    new-instance v3, LU0/r;

    .line 29
    .line 30
    const/16 v4, 0xa

    .line 31
    .line 32
    invoke-direct {v3, v4, p0, v0}, LU0/r;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Ll/k;

    .line 39
    .line 40
    const/16 v3, 0xd

    .line 41
    .line 42
    invoke-direct {v2, v3, p0, v0}, Ll/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast v1, Lm2/u;

    .line 46
    .line 47
    iget-object v1, v1, Lm2/u;->J:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Lo2/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    :goto_0
    iget-object v0, p0, Ln2/s;->G:Lo2/j;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Lo2/j;->j(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method
