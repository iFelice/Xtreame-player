.class public final La1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public final synthetic a:I

.field public final b:LW0/s;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 7
    iput v0, p0, La1/a;->a:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, LW0/H;

    const-string v1, "image/jpeg"

    const v2, 0xffd8

    invoke-direct {p1, v2, v0, v1}, LW0/H;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, La1/a;->b:LW0/s;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ld1/a;

    invoke-direct {p1}, Ld1/a;-><init>()V

    iput-object p1, p0, La1/a;->b:LW0/s;

    :goto_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 1
    iput p1, p0, La1/a;->a:I

    const/4 p2, 0x1

    const/4 v0, 0x2

    if-eq p1, p2, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, LW0/H;

    const-string p2, "image/bmp"

    const/16 v1, 0x424d

    invoke-direct {p1, v1, v0, p2}, LW0/H;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, La1/a;->b:LW0/s;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, LW0/H;

    const-string p2, "image/png"

    const v1, 0x8950

    invoke-direct {p1, v1, v0, p2}, LW0/H;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, La1/a;->b:LW0/s;

    return-void
.end method


# virtual methods
.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 2

    .line 1
    iget v0, p0, La1/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, La1/a;->b:LW0/s;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, p1}, LW0/s;->d(LW0/u;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast v1, LW0/H;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, LW0/H;->d(LW0/u;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast v1, LW0/H;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, LW0/H;->d(LW0/u;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(LW0/t;)Z
    .locals 2

    .line 1
    iget v0, p0, La1/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, La1/a;->b:LW0/s;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, p1}, LW0/s;->g(LW0/t;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :pswitch_0
    check-cast v1, LW0/H;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, LW0/H;->g(LW0/t;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :pswitch_1
    check-cast v1, LW0/H;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, LW0/H;->g(LW0/t;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 2

    .line 1
    iget v0, p0, La1/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, La1/a;->b:LW0/s;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, p1, p2}, LW0/s;->h(LW0/t;LW0/w;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :pswitch_0
    check-cast v1, LW0/H;

    .line 14
    .line 15
    invoke-virtual {v1, p1, p2}, LW0/H;->h(LW0/t;LW0/w;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :pswitch_1
    check-cast v1, LW0/H;

    .line 21
    .line 22
    invoke-virtual {v1, p1, p2}, LW0/H;->h(LW0/t;LW0/w;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(JJ)V
    .locals 2

    .line 1
    iget v0, p0, La1/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, La1/a;->b:LW0/s;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, p1, p2, p3, p4}, LW0/s;->i(JJ)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast v1, LW0/H;

    .line 13
    .line 14
    invoke-virtual {v1, p1, p2, p3, p4}, LW0/H;->i(JJ)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast v1, LW0/H;

    .line 19
    .line 20
    invoke-virtual {v1, p1, p2, p3, p4}, LW0/H;->i(JJ)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .line 1
    iget v0, p0, La1/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 7
    .line 8
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 12
    .line 13
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_1
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 17
    .line 18
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final release()V
    .locals 1

    .line 1
    iget v0, p0, La1/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La1/a;->b:LW0/s;

    .line 7
    .line 8
    invoke-interface {v0}, LW0/s;->release()V

    .line 9
    .line 10
    .line 11
    :pswitch_0
    return-void

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
