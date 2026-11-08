.class public final synthetic LB0/N0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Z

.field public final synthetic I:Z

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LB0/N0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LB0/N0;->J:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, LB0/N0;->H:Z

    .line 10
    .line 11
    iput-boolean p2, p0, LB0/N0;->I:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, LB0/N0;->G:I

    .line 2
    .line 3
    iget-boolean v1, p0, LB0/N0;->I:Z

    .line 4
    .line 5
    iget-boolean v2, p0, LB0/N0;->H:Z

    .line 6
    .line 7
    iget-object v3, p0, LB0/N0;->J:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Ll/e1;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget v0, v3, Ll/e1;->a:I

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_1

    .line 17
    .line 18
    .line 19
    iget-object v0, v3, Ll/e1;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lm2/e;

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lm2/e;->F(ZZ)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_0
    iget-object v0, v3, Ll/e1;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lm2/c;

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lm2/c;->B(ZZ)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_1
    iget v0, v3, Ll/e1;->a:I

    .line 36
    .line 37
    packed-switch v0, :pswitch_data_2

    .line 38
    .line 39
    .line 40
    iget-object v0, v3, Ll/e1;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lm2/e;

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lm2/e;->F(ZZ)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :pswitch_2
    iget-object v0, v3, Ll/e1;->d:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lm2/c;

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Lm2/c;->B(ZZ)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
