.class public final Lf/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS1/d;


# instance fields
.field public final synthetic a:Lf/o;


# direct methods
.method public constructor <init>(Lf/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf/m;->a:Lf/o;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lf/m;->a:Lf/o;

    .line 7
    .line 8
    invoke-virtual {v1}, Lf/o;->p()Lf/w;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
