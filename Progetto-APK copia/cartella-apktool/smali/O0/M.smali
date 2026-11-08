.class public final LO0/M;
.super LO0/n;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LO0/N;LO0/Y;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LO0/M;->c:I

    .line 2
    iput-object p1, p0, LO0/M;->d:Ljava/lang/Object;

    invoke-direct {p0, p2}, LO0/n;-><init>(Lm0/f0;)V

    return-void
.end method

.method public constructor <init>(Lm0/f0;Lm0/I;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, LO0/M;->c:I

    .line 4
    invoke-direct {p0, p1}, LO0/n;-><init>(Lm0/f0;)V

    .line 5
    iput-object p2, p0, LO0/M;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g(ILm0/d0;Z)Lm0/d0;
    .locals 1

    .line 1
    iget v0, p0, LO0/M;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LO0/n;->b:Lm0/f0;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lm0/f0;->g(ILm0/d0;Z)Lm0/d0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, LO0/n;->g(ILm0/d0;Z)Lm0/d0;

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p2, Lm0/d0;->f:Z

    .line 18
    .line 19
    return-object p2

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n(ILm0/e0;J)Lm0/e0;
    .locals 1

    .line 1
    iget v0, p0, LO0/M;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, LO0/n;->n(ILm0/e0;J)Lm0/e0;

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, LO0/M;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lm0/I;

    .line 12
    .line 13
    iput-object p1, p2, Lm0/e0;->c:Lm0/I;

    .line 14
    .line 15
    iget-object p1, p1, Lm0/I;->b:Lm0/E;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Lm0/E;->g:Ljava/lang/Object;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    iput-object p1, p2, Lm0/e0;->b:Ljava/lang/Object;

    .line 24
    .line 25
    return-object p2

    .line 26
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, LO0/n;->n(ILm0/e0;J)Lm0/e0;

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p2, Lm0/e0;->k:Z

    .line 31
    .line 32
    return-object p2

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
