.class public final synthetic Lp0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lp0/e;

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lp0/e;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lp0/c;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lp0/c;->H:Lp0/e;

    .line 7
    .line 8
    iput-object p2, p0, Lp0/c;->I:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lp0/c;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lp0/c;->I:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lp0/c;->H:Lp0/e;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget v0, v2, Lp0/e;->f:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    iput v0, v2, Lp0/e;->f:I

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, v2, Lp0/e;->d:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object v1, v2, Lp0/e;->d:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    iget-object v2, v2, Lp0/e;->c:Lp0/d;

    .line 29
    .line 30
    invoke-interface {v2, v0, v1}, Lp0/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :pswitch_0
    iget v0, v2, Lp0/e;->f:I

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object v0, v2, Lp0/e;->d:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v1, v2, Lp0/e;->d:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    iget-object v2, v2, Lp0/e;->c:Lp0/d;

    .line 49
    .line 50
    invoke-interface {v2, v0, v1}, Lp0/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
