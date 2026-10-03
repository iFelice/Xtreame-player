.class public final synthetic Lv3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lv3/t;

.field public final synthetic I:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lv3/t;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lv3/s;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lv3/s;->H:Lv3/t;

    .line 7
    .line 8
    iput-object p2, p0, Lv3/s;->I:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lv3/s;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lv3/s;->I:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v3, p0, Lv3/s;->H:Lv3/t;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v3, Lv3/t;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lv3/a;

    .line 14
    .line 15
    iget-object v0, v0, Lv3/a;->b:Landroid/webkit/WebView;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v0, v3, Lv3/t;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lv3/a;

    .line 24
    .line 25
    iget-object v0, v0, Lv3/a;->b:Landroid/webkit/WebView;

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
