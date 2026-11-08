.class public final synthetic LB0/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/u;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LB0/v0;


# direct methods
.method public synthetic constructor <init>(LB0/v0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LB0/C;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LB0/C;->H:LB0/v0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, LB0/C;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LB0/C;->H:LB0/v0;

    .line 4
    .line 5
    check-cast p1, Lm0/W;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget v0, v1, LB0/v0;->e:I

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lm0/W;->m(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-boolean v0, v1, LB0/v0;->l:Z

    .line 17
    .line 18
    iget v1, v1, LB0/v0;->e:I

    .line 19
    .line 20
    invoke-interface {p1, v1, v0}, Lm0/W;->z(IZ)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-boolean v0, v1, LB0/v0;->g:Z

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-boolean v0, v1, LB0/v0;->g:Z

    .line 30
    .line 31
    invoke-interface {p1, v0}, Lm0/W;->i(Z)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_2
    iget-object v0, v1, LB0/v0;->i:LR0/y;

    .line 36
    .line 37
    iget-object v0, v0, LR0/y;->d:Lm0/m0;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lm0/W;->A(Lm0/m0;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_3
    iget-object v0, v1, LB0/v0;->f:LB0/w;

    .line 44
    .line 45
    invoke-interface {p1, v0}, Lm0/W;->p(LB0/w;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_4
    iget-object v0, v1, LB0/v0;->f:LB0/w;

    .line 50
    .line 51
    invoke-interface {p1, v0}, Lm0/W;->v(LB0/w;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_5
    iget-object v0, v1, LB0/v0;->o:Lm0/S;

    .line 56
    .line 57
    invoke-interface {p1, v0}, Lm0/W;->n(Lm0/S;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_6
    invoke-virtual {v1}, LB0/v0;->m()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-interface {p1, v0}, Lm0/W;->O(Z)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_7
    iget v0, v1, LB0/v0;->n:I

    .line 70
    .line 71
    invoke-interface {p1, v0}, Lm0/W;->a(I)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_8
    iget-boolean v0, v1, LB0/v0;->l:Z

    .line 76
    .line 77
    iget v1, v1, LB0/v0;->m:I

    .line 78
    .line 79
    invoke-interface {p1, v1, v0}, Lm0/W;->j(IZ)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
