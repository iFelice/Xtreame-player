.class public final Le6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/c;


# instance fields
.field public final synthetic a:I

.field public final b:LY5/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/Q1;LY5/d;I)V
    .locals 1

    .line 1
    iput p3, p0, Le6/b;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p3, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Le6/b;->b:LY5/d;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    const-string p3, "success rate ejection config is null"

    .line 20
    .line 21
    invoke-static {p3, p1}, Ly4/k;->o(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Le6/b;->b:LY5/d;

    .line 25
    .line 26
    return-void
.end method
