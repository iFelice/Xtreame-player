.class public final synthetic Le7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Le7/d;


# direct methods
.method public synthetic constructor <init>(Le7/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Le7/b;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Le7/b;->H:Le7/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Le7/b;->G:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Le7/b;->H:Le7/d;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p1, v1, Le7/d;->V0:Landroid/content/DialogInterface$OnClickListener;

    .line 10
    .line 11
    iget-object v2, v1, LY/m;->N0:Landroid/app/Dialog;

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    invoke-interface {p1, v2, v3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0, v0}, LY/m;->S(ZZ)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    sget-object p1, Le7/d;->X0:Lz4/d0;

    .line 22
    .line 23
    invoke-virtual {v1, v0, v0}, LY/m;->S(ZZ)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
