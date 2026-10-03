.class public final synthetic LY/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LY/v;


# direct methods
.method public synthetic constructor <init>(Lf/o;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LY/t;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LY/t;->b:LY/v;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, LY/t;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LY/t;->b:LY/v;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/content/Intent;

    .line 9
    .line 10
    iget-object p1, v1, LY/v;->X:Lf/S;

    .line 11
    .line 12
    invoke-virtual {p1}, Lf/S;->S()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p1, Landroid/content/res/Configuration;

    .line 17
    .line 18
    iget-object p1, v1, LY/v;->X:Lf/S;

    .line 19
    .line 20
    invoke-virtual {p1}, Lf/S;->S()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
