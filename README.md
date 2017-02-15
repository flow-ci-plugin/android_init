
# android_init Step
Android environment initialize

### INPUTS
* `FLOW_PROJECT_ANDROID_SDK` - 
* `FLOW_PROJECT_NAME` - 
* `FLOW_PROJECT_ANDROID_CPU` - 

## EXAMPLE 

```yml
steps:
  - name: android_init
    enable: true
    failure: true
    plugin:
      name: android_init
      inputs:
        - FLOW_PROJECT_ANDROID_SDK=$FLOW_PROJECT_ANDROID_SDK
        - FLOW_PROJECT_NAME=$FLOW_PROJECT_NAME
        - FLOW_PROJECT_ANDROID_CPU=$FLOW_PROJECT_ANDROID_CPU
```
