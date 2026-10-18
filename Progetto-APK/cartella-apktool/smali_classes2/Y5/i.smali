.class public abstract LY5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LY5/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LY5/b;

    .line 2
    .line 3
    const-string v1, "io.grpc.EquivalentAddressGroup.ATTR_AUTHORITY_OVERRIDE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, LY5/b;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LY5/i;->a:LY5/b;

    .line 9
    .line 10
    return-void
.end method
