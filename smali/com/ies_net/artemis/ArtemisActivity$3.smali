.class Lcom/ies_net/artemis/ArtemisActivity$3;
.super Ljava/lang/Object;
.source "ArtemisActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/ArtemisActivity;->onStateUpdate(Lcom/google/android/play/core/assetpacks/AssetPackState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ies_net/artemis/ArtemisActivity;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/ArtemisActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$3;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$3;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$200(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 133
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$3;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ies_net/artemis/ArtemisActivity;->access$202(Lcom/ies_net/artemis/ArtemisActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
