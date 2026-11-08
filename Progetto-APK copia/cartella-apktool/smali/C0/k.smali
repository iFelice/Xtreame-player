.class public final synthetic LC0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/u;
.implements Lp0/j;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:I

.field public final synthetic J:Ljava/lang/Object;

.field public final synthetic K:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILm0/X;Lm0/X;LC0/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LC0/k;->G:I

    iput-object p4, p0, LC0/k;->H:Ljava/lang/Object;

    iput p1, p0, LC0/k;->I:I

    iput-object p2, p0, LC0/k;->J:Ljava/lang/Object;

    iput-object p3, p0, LC0/k;->K:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;LO0/p;LO0/u;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, LC0/k;->G:I

    iput-object p1, p0, LC0/k;->H:Ljava/lang/Object;

    iput-object p2, p0, LC0/k;->J:Ljava/lang/Object;

    iput-object p3, p0, LC0/k;->K:Ljava/lang/Object;

    iput p4, p0, LC0/k;->I:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, LC0/k;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LO0/D;

    .line 4
    .line 5
    iget-object v1, p0, LC0/k;->J:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v5, v1

    .line 8
    check-cast v5, LO0/p;

    .line 9
    .line 10
    iget-object v1, p0, LC0/k;->K:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v6, v1

    .line 13
    check-cast v6, LO0/u;

    .line 14
    .line 15
    move-object v2, p1

    .line 16
    check-cast v2, LO0/E;

    .line 17
    .line 18
    iget v3, v0, LO0/D;->a:I

    .line 19
    .line 20
    iget-object v4, v0, LO0/D;->b:LO0/y;

    .line 21
    .line 22
    iget v7, p0, LC0/k;->I:I

    .line 23
    .line 24
    invoke-interface/range {v2 .. v7}, LO0/E;->I(ILO0/y;LO0/p;LO0/u;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, LC0/k;->G:I

    .line 2
    .line 3
    check-cast p1, LC0/c;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p1, LC0/F;

    .line 16
    .line 17
    iget v0, p0, LC0/k;->I:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iput-boolean v1, p1, LC0/F;->v:Z

    .line 23
    .line 24
    :cond_0
    iput v0, p1, LC0/F;->l:I

    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
