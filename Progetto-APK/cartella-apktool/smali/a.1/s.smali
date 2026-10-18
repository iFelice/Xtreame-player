.class public final La/s;
.super LD6/h;
.source "SourceFile"

# interfaces
.implements LC6/a;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:La/x;


# direct methods
.method public synthetic constructor <init>(La/x;I)V
    .locals 0

    .line 1
    iput p2, p0, La/s;->G:I

    .line 2
    .line 3
    iput-object p1, p0, La/s;->H:La/x;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, LD6/h;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lt6/h;->a:Lt6/h;

    .line 2
    .line 3
    iget-object v1, p0, La/s;->H:La/x;

    .line 4
    .line 5
    iget v2, p0, La/s;->G:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    packed-switch v2, :pswitch_data_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, La/x;->b()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    invoke-virtual {v1}, La/x;->c()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object v0

    .line 21
    :pswitch_1
    packed-switch v2, :pswitch_data_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, La/x;->b()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :pswitch_2
    invoke-virtual {v1}, La/x;->c()V

    .line 29
    .line 30
    .line 31
    :goto_1
    return-object v0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
