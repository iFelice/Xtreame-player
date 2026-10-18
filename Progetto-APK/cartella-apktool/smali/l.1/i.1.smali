.class public final Ll/i;
.super Lk/y;
.source "SourceFile"


# instance fields
.field public final synthetic m:I

.field public final synthetic n:Ll/n;


# direct methods
.method public constructor <init>(Ll/n;Landroid/content/Context;Lk/G;Landroid/view/View;)V
    .locals 8

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Ll/i;->m:I

    .line 10
    iput-object p1, p0, Ll/i;->n:Ll/n;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const v2, 0x7f040022

    move-object v1, p0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    .line 11
    invoke-direct/range {v1 .. v7}, Lk/y;-><init>(IILandroid/content/Context;Landroid/view/View;Lk/o;Z)V

    .line 12
    iget-object p2, p3, Lk/G;->A:Lk/q;

    .line 13
    invoke-virtual {p2}, Lk/q;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 14
    iget-object p2, p1, Ll/n;->O:Ll/m;

    if-nez p2, :cond_0

    .line 15
    iget-object p2, p1, Ll/n;->N:Lk/C;

    .line 16
    check-cast p2, Landroid/view/View;

    .line 17
    :cond_0
    iput-object p2, p0, Lk/y;->f:Landroid/view/View;

    .line 18
    :cond_1
    iget-object p1, p1, Ll/n;->c0:Lf/S;

    .line 19
    iput-object p1, p0, Lk/y;->i:Lk/z;

    .line 20
    iget-object p2, p0, Lk/y;->j:Lk/w;

    if-eqz p2, :cond_2

    .line 21
    invoke-interface {p2, p1}, Lk/A;->f(Lk/z;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Ll/n;Landroid/content/Context;Lk/o;Ll/m;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Ll/i;->m:I

    .line 2
    iput-object p1, p0, Ll/i;->n:Ll/n;

    const/4 v3, 0x0

    const v2, 0x7f040022

    const/4 v7, 0x1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    .line 3
    invoke-direct/range {v1 .. v7}, Lk/y;-><init>(IILandroid/content/Context;Landroid/view/View;Lk/o;Z)V

    const p2, 0x800005

    .line 4
    iput p2, p0, Lk/y;->g:I

    .line 5
    iget-object p1, p1, Ll/n;->c0:Lf/S;

    .line 6
    iput-object p1, p0, Lk/y;->i:Lk/z;

    .line 7
    iget-object p2, p0, Lk/y;->j:Lk/w;

    if-eqz p2, :cond_0

    .line 8
    invoke-interface {p2, p1}, Lk/A;->f(Lk/z;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    iget v0, p0, Ll/i;->m:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Ll/i;->n:Ll/n;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, v2, Ll/n;->I:Lk/o;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, v3}, Lk/o;->c(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, v2, Ll/n;->Y:Ll/i;

    .line 18
    .line 19
    invoke-super {p0}, Lk/y;->c()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iput-object v1, v2, Ll/n;->Z:Ll/i;

    .line 24
    .line 25
    invoke-super {p0}, Lk/y;->c()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
