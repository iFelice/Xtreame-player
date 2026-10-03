.class public final LN6/q;
.super LJ6/m;
.source "SourceFile"

# interfaces
.implements LJ6/w;


# instance fields
.field public final I:LJ6/m;

.field public final J:Ljava/lang/String;


# direct methods
.method public constructor <init>(LJ6/m;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LJ6/m;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, LJ6/w;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, LJ6/w;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget v0, LJ6/t;->a:I

    .line 16
    .line 17
    :cond_1
    iput-object p1, p0, LN6/q;->I:LJ6/m;

    .line 18
    .line 19
    iput-object p2, p0, LN6/q;->J:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a0(Lx6/j;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, LN6/q;->I:LJ6/m;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LJ6/m;->a0(Lx6/j;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b0(Lx6/j;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LN6/q;->I:LJ6/m;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LJ6/m;->b0(Lx6/j;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LN6/q;->J:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
