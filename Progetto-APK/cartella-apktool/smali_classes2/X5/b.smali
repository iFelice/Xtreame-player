.class public abstract LX5/b;
.super LO1/c0;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a0:LV5/b;


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, LX5/b;->a0:LV5/b;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, LO1/c0;->c()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p1, p1, LV5/b;->J:LV5/a;

    .line 10
    .line 11
    iget-object v1, p1, LV5/a;->b:LF/i;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, LF/i;->m(I)LW5/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, v1, LF/i;->I:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, [Z

    .line 20
    .line 21
    iget v2, v0, LW5/b;->a:I

    .line 22
    .line 23
    aget-boolean v1, v1, v2

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, v0}, LV5/a;->a(LW5/b;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1, v0}, LV5/a;->b(LW5/b;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method
