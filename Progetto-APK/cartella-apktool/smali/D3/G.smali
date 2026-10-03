.class public final synthetic LD3/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/d;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LD3/H;


# direct methods
.method public synthetic constructor <init>(LD3/H;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LD3/G;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LD3/G;->H:LD3/H;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onComplete(Lg4/h;)V
    .locals 2

    .line 1
    iget v0, p0, LD3/G;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LD3/G;->H:LD3/H;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, LD3/H;->H:LD3/c;

    .line 9
    .line 10
    const-string v1, "joinApplication"

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, LD3/c;->e(LD3/c;Ljava/lang/String;Lg4/h;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, v1, LD3/H;->H:LD3/c;

    .line 17
    .line 18
    const-string v1, "launchApplication"

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, LD3/c;->e(LD3/c;Ljava/lang/String;Lg4/h;)V

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
