.class public final Lo3/j;
.super Ll3/l0;
.source "SourceFile"


# instance fields
.field public final synthetic G:Landroid/content/Context;

.field public final synthetic H:Lo3/l;


# direct methods
.method public constructor <init>(Lo3/l;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lo3/j;->G:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p1, p0, Lo3/j;->H:Lo3/l;

    .line 4
    .line 5
    invoke-direct {p0}, Ll3/l0;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final s0(Ll3/z0;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lo3/j;->H:Lo3/l;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Ll3/z0;->H:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p0, Lo3/j;->G:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {p1, v0, v1, v1}, Lo3/l;->f(Ljava/lang/String;Landroid/content/Context;ZZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
